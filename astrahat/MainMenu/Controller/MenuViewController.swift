//
//  MenuViewController.swift
//  astrahat
//
//  Created by on on 8/17/18.
//  Copyright © 2018 on. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var gpsHolderView: UIView!
    @IBOutlet weak var cityNameLabel: UILabel!

    @IBOutlet weak var tableView: UITableView!
    
    let greenColor = UIColor(red: 6/255.0, green: 207/255.0, blue: 111/255.0, alpha: 1.0)
    let grayColor = UIColor.lightGray
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.gpsHolderView.layer.borderWidth = 2
        self.gpsHolderView.layer.borderColor = greenColor.cgColor
        self.gpsHolderView.layer.cornerRadius = 6
        cityNameLabel.text = Helpers.shared.getFromUserDefaults(key: Helpers.shared.K_CityName) as? String
    }

}
