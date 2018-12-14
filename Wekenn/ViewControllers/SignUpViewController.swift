//
//  SignUpViewController.swift
//  Wekenn
//
//  Created by Isaac Samuel on 10/31/18.
//  Copyright © 2018 Jules Frantz Stephane Loubeau. All rights reserved.
//

import UIKit
import Parse

class SignUpViewController: UIViewController {

    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var confirmPassField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func loadHomeScreen(){
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let loggedInViewController = storyBoard.instantiateViewController(withIdentifier: "homeViewID") as! HomeViewController
        self.present(loggedInViewController, animated: true, completion: nil)
    }
    
    @IBAction func onCreateUser(_ sender: Any) {
        
        let newUser = PFUser()
        
        //newUser.First; Name = firstNameField.text
        //newUser.Last; Name = lastNameField.text
        newUser.email = emailField.text
        newUser.username = usernameField.text
        newUser.password = passwordField.text
        let confirmPass = confirmPassField.text
        
        
        let sv = UIViewController.displaySpinner(onView: self.view)
        
        if (confirmPass?.isEmpty)!{
            let OKAction = UIAlertAction(title: "OK", style: .default){(action) in}
            let alertController = UIAlertController(title: "Confirm is Required!", message: "Please Confirm your password.", preferredStyle: .alert)
            self.present(alertController, animated: true, completion: nil)
            // add the OK action to the alert controller
            alertController.addAction(OKAction)
            //self.AcitivityIndicator.stopAnimating()
        }else if (newUser.password != confirmPass!){
            let OKAction = UIAlertAction(title: "OK", style: .default){(action) in}
            let alertController = UIAlertController(title: "Don't Match", message: "Password don't match - Re-Enter your password.", preferredStyle: .alert)
            self.present(alertController, animated: true, completion: nil)
            // add the OK action to the alert controller
            alertController.addAction(OKAction)
            UIViewController.removeSpinner(spinner: sv)
            //self.AcitivityIndicator.stopAnimating()
        }else{
        // Sign up the user asynchronously
        newUser.signUpInBackground(block: { (succeed, error) -> Void in
        
        if ((error) != nil) {
        print("Error")
        
        } else {
            /*
        let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "homeID")
        self.present(viewController, animated: true, completion: nil)*/
        print("signUp successfully")
        print("Logged Successfully")
        self.loadHomeScreen()
        }
        })
        
    }
        
        /*
        {
        newUser.signUpInBackground { (success, error) in
            UIViewController.removeSpinner(spinner: sv)
            if success{
                print("Logged Successfully")
                self.loadHomeScreen()
            }else{
                if let descrip = error?.localizedDescription{
                    print("Error to create account")
                    self.displayErrorMessage(message: descrip)
                }
            }
        }
        }
        */
        
        
    }
    
    func displayErrorMessage(message:String) {
        let alertView = UIAlertController(title: "Error!", message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction) in
        }
        alertView.addAction(OKAction)
        if let presenter = alertView.popoverPresentationController {
            presenter.sourceView = self.view
            presenter.sourceRect = self.view.bounds
        }
        self.present(alertView, animated: true, completion:nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
extension UIViewController{
    class func displaySpinner(onView : UIView) -> UIView {
        let spinnerView = UIView.init(frame: onView.bounds)
        spinnerView.backgroundColor = UIColor.init(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        let ai = UIActivityIndicatorView.init(style: .whiteLarge)
        ai.startAnimating()
        ai.center = spinnerView.center
        
        DispatchQueue.main.async {
            spinnerView.addSubview(ai)
            onView.addSubview(spinnerView)
        }
        
        return spinnerView
    }
    
    class func removeSpinner(spinner :UIView) {
        DispatchQueue.main.async {
            spinner.removeFromSuperview()
        }
    }
}
