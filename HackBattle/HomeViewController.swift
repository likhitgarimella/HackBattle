//
//  HomeViewController.swift
//  HackBattle
//
//  Created by Likhit Garimella on 29/10/20.
//

import UIKit

class HomeViewController: UIViewController {
    
    // Outlets
    @IBOutlet var register: UIButton!
    @IBOutlet var tracks: UIButton!
    @IBOutlet var prizes: UIButton!
    
    // Container Views
    @IBOutlet var registerView: UIView!
    @IBOutlet var tracksView: UIView!
    @IBOutlet var prizesView: UIView!
    
    func Default() {
        
        /// Dark blue color theme
        register.setTitleColor(UIColor(red: 15/255, green: 60/255, blue: 122/255, alpha: 1.0), for: .normal)
        /// Gray color theme
        tracks.setTitleColor(UIColor(red: 110/255, green: 120/255, blue: 130/255, alpha: 1.0), for: .normal)
        /// Gray color theme
        prizes.setTitleColor(UIColor(red: 110/255, green: 120/255, blue: 130/255, alpha: 1.0), for: .normal)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // remove title for left bar button item
        navigationController?.navigationBar.topItem?.title = ""
        
        Default()
        
    }
    
}   // #44
