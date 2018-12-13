//
//  UdetailsViewController.swift
//  Wekenn
//
//  Created by Isaac Samuel on 12/13/18.
//  Copyright © 2018 Jules Frantz Stephane Loubeau. All rights reserved.
//

import UIKit

class UdetailsViewController: UIViewController {
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var titleView: UILabel!
    @IBOutlet weak var descriptionView: UITextView!
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    
    var Um: Umodel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        bgImage.image = UIImage(named: Um.image)
        titleView.text = Um.name
        descriptionView.text = Um.description
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(actionClose(_:))))
    }
    
    @objc func actionClose(_ tap: UITapGestureRecognizer) {
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    //MARK: button actions
    
    @IBAction func actionFavorite(_ sender: Any) {
        
    }
    @IBAction func actionCancel(_ sender: Any) {
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
