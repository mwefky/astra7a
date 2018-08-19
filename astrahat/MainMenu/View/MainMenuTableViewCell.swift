//
//  MainMenuTableViewCell.swift
//  astrahat
//
//  Created by on on 8/17/18.
//  Copyright © 2018 on. All rights reserved.
//

import UIKit

class MainMenuTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellName: UILabel!
    @IBOutlet weak var cellRating: UILabel!
    @IBOutlet weak var cellAdress: UILabel!
    @IBOutlet weak var cellTime: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
