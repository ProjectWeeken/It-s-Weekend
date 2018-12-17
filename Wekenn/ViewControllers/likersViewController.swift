//
//  likersViewController.swift
//  Wekenn
//
//  Created by Isaac Samuel on 12/17/18.
//  Copyright © 2018 Jules Frantz Stephane Loubeau. All rights reserved.
//

import UIKit

class likersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    
    let likers = ["Zazou","Papi","Keke"]
    let likersImage : [UIImage] = [
        
    UIImage(named: "Samy5")!,
    UIImage(named: "Steph5")!,
    UIImage(named: "Kerry5")!,
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return likers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "likerCell", for: indexPath) as! LikersViewCell
        cell.likerNameLabel.text = likers[indexPath.item]
        cell.likerImageView.image = likersImage[indexPath.item]
        return cell
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
