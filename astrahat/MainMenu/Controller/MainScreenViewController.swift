//
//  MainScreenViewController.swift
//  astrahat
//
//  Created by on on 8/15/18.
//  Copyright © 2018 on. All rights reserved.
//

import UIKit

class MainScreenViewController: UIViewController {

    @IBOutlet weak var mapBtn: UIButton!
    @IBOutlet weak var menuBtn: UIButton!
    @IBOutlet weak var mapImage: UIImageView!
    @IBOutlet weak var menuImageView: UIImageView!
    @IBOutlet weak var menuHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var mapHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var mapLineView: UIView!
    @IBOutlet weak var menuLineView: UIView!
    
    @IBOutlet weak var containerView: UIView!
    let greenColor = UIColor(red: 6/255.0, green: 207/255.0, blue: 111/255.0, alpha: 1.0)
    let grayColor = UIColor.lightGray
    
    private lazy var menuViewController: MenuViewController = {
        // Load Storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        // Instantiate View Controller
        var viewController = storyboard.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
        
        // Add View Controller as Child View Controller
        self.add(asChildViewController: viewController)
        
        return viewController
    }()
    
    private lazy var mapViewController: MapViewController = {
        // Load Storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        // Instantiate View Controller
        var viewController = storyboard.instantiateViewController(withIdentifier: "MapViewController") as! MapViewController
        
        // Add View Controller as Child View Controller
        self.add(asChildViewController: viewController)
        
        return viewController
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "الرائيسية"
        
        mapBtn.setTitleColor(grayColor, for: .normal)
        mapLineView.backgroundColor = grayColor
        menuHeightConstraint.constant = 4
        mapHeightConstraint.constant = 2
        menuBtn.setTitleColor(greenColor, for: .normal)
        menuLineView.backgroundColor = greenColor
        
        
        add(asChildViewController: menuViewController)
        remove(asChildViewController: mapViewController)
    }
    
    
    @IBAction func mapButtonTapped(_ sender: Any) {
        mapBtn.setTitleColor(greenColor, for: .normal)
        mapLineView.backgroundColor = greenColor
        menuLineView.backgroundColor = grayColor
        menuHeightConstraint.constant = 2
        mapHeightConstraint.constant = 4
        menuBtn.setTitleColor(grayColor, for: .normal)
        menuImageView.image = UIImage(named: "menu2")
        mapImage.image = UIImage(named: "map_hover")
        add(asChildViewController: mapViewController)
        remove(asChildViewController: menuViewController)
    }
    
    @IBAction func menuButtonTapped(_ sender: Any) {
        mapBtn.setTitleColor(grayColor, for: .normal)
        mapLineView.backgroundColor = grayColor
        menuLineView.backgroundColor = greenColor
        menuHeightConstraint.constant = 4
        mapHeightConstraint.constant = 2
        menuBtn.setTitleColor(greenColor, for: .normal)
        menuImageView.image = UIImage(named: "menu_hover")
        mapImage.image = UIImage(named: "map")
        add(asChildViewController: menuViewController)
        remove(asChildViewController: mapViewController)
    }
    
    
    private func add(asChildViewController viewController: UIViewController) {
        // Add Child View Controller
        addChildViewController(viewController)
        
        // Add Child View as Subview
        containerView.addSubview(viewController.view)
        
        // Configure Child View
        viewController.view.frame = containerView.bounds
        viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // Notify Child View Controller
        viewController.didMove(toParentViewController: self)
    }
    
    
    private func remove(asChildViewController viewController: UIViewController) {
        // Notify Child View Controller
        viewController.willMove(toParentViewController: nil)
        
        // Remove Child View From Superview
        viewController.view.removeFromSuperview()
        
        // Notify Child View Controller
        viewController.removeFromParentViewController()
    }
    
}
