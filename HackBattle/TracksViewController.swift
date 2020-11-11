//
//  TracksViewController.swift
//  HackBattle
//
//  Created by Likhit Garimella on 08/11/20.
//

import UIKit

class TracksViewController: UIViewController {
    
    // Outlets
    @IBOutlet var viewOne: UIView!
    @IBOutlet var viewTwo: UIView!
    @IBOutlet var viewThree: UIView!
    @IBOutlet var viewFour: UIView!
    @IBOutlet var viewFive: UIView!
    @IBOutlet var viewSix: UIView!
    
    func Properties() {
        
        // MARK: - Corner radius
        viewOne.layer.cornerRadius = 15
        viewTwo.layer.cornerRadius = 15
        
        // MARK: - Shadow properties
        
        viewOne.layer.shadowColor = UIColor(red: 15/255, green: 60/255, blue: 122/255, alpha: 1.0).cgColor
        viewOne.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        viewOne.layer.shadowRadius = 6.0
        viewOne.layer.shadowOpacity = 0.3
        viewOne.layer.masksToBounds = false
        
        viewTwo.layer.shadowColor = UIColor(red: 15/255, green: 60/255, blue: 122/255, alpha: 1.0).cgColor
        viewTwo.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        viewTwo.layer.shadowRadius = 6.0
        viewTwo.layer.shadowOpacity = 0.3
        viewTwo.layer.masksToBounds = false
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Properties()
        
    }
    
}   // #50
