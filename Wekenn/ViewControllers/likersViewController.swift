//
//  likersViewController.swift
//  Wekenn
//
//  Created by Isaac Samuel on 12/17/18.
//  Copyright © 2018 Jules Frantz Stephane Loubeau. All rights reserved.
//

import UIKit

class likersViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    
    let likers = ["Zazou","Papi","Keke"]
    let likersImage : [UIImage] = [
        
    UIImage(named: "Samy5")!,
    UIImage(named: "Steph5")!,
    UIImage(named: "Kerry5")!,
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return likers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "likerCell", for: indexPath) as! LikersCollectionViewCell
        cell.likerNameLabel.text = likers[indexPath.item]
        cell.likerImageView.image = likersImage[indexPath.item]
        return cell
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
