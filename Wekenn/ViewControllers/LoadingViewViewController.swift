//
//  LoadingViewViewController.swift
//  Wekenn
//
//  Created by Isaac Samuel on 12/12/18.
//  Copyright © 2018 Jules Frantz Stephane Loubeau. All rights reserved.
//

import UIKit

class LoadingViewViewController: UIViewController {
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        let firstImageView = UIImageView(image: UIImage(named: "Meet.jpg"))
            firstImageView.frame = view.frame
            view.addSubview(firstImageView)
        
            imageFadeIn(firstImageView)
    }

    func imageFadeIn(imageView: UIImageView) {
        let secondImageView = UIImageView(image: UIImage(named: "love2.jpg"))
        secondImageView.frame = view.frame
        secondImageView.alpha = 0.0
        view.insertSubview(secondImageView, aboveSubview: imageView)
        UIView.animate(withDuration: 2.0, delay: 2.0, options: .curveEaseOut, animations: {
            secondImageView.alpha = 1.0
        }, completion: {_ in
            imageView.image = secondImageView.image
            secondImageView.removeFromSuperview()
        })
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
