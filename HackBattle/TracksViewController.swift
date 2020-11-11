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
        viewThree.layer.cornerRadius = 15
        viewFour.layer.cornerRadius = 15
        viewFive.layer.cornerRadius = 15
        viewSix.layer.cornerRadius = 15
        
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
        
        viewThree.layer.shadowColor = UIColor(red: 15/255, green: 60/255, blue: 122/255, alpha: 1.0).cgColor
        viewThree.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        viewThree.layer.shadowRadius = 6.0
        viewThree.layer.shadowOpacity = 0.3
        viewThree.layer.masksToBounds = false
        
        viewFour.layer.shadowColor = UIColor(red: 15/255, green: 60/255, blue: 122/255, alpha: 1.0).cgColor
        viewFour.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        viewFour.layer.shadowRadius = 6.0
        viewFour.layer.shadowOpacity = 0.3
        viewFour.layer.masksToBounds = false
        
        viewFive.layer.shadowColor = UIColor(red: 15/255, green: 60/255, blue: 122/255, alpha: 1.0).cgColor
        viewFive.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        viewFive.layer.shadowRadius = 6.0
        viewFive.layer.shadowOpacity = 0.3
        viewFive.layer.masksToBounds = false
        
        viewSix.layer.shadowColor = UIColor(red: 15/255, green: 60/255, blue: 122/255, alpha: 1.0).cgColor
        viewSix.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        viewSix.layer.shadowRadius = 6.0
        viewSix.layer.shadowOpacity = 0.3
        viewSix.layer.masksToBounds = false
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Properties()
        
    }
    
}   // #78
