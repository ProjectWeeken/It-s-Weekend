//
//  LikersViewCell.swift
//  Wekenn
//
//  Created by Isaac Samuel on 12/17/18.
//  Copyright © 2018 Jules Frantz Stephane Loubeau. All rights reserved.
//

import UIKit

class LikersViewCell: UITableViewCell {
    @IBOutlet weak var likerImageView: UIImageView!
    
    @IBOutlet weak var likerNameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
