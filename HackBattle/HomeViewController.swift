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
        
        // hideKeyboardWhenTappedAround()
        Default()
        
    }
    
    @IBAction func registerAction(_ sender: UIButton) {
        
        register.setTitleColor(UIColor(red: 15/255, green: 60/255, blue: 122/255, alpha: 1.0), for: .normal)
        tracks.setTitleColor(UIColor(red: 110/255, green: 120/255, blue: 130/255, alpha: 1.0), for: .normal)
        prizes.setTitleColor(UIColor(red: 110/255, green: 120/255, blue: 130/255, alpha: 1.0), for: .normal)
        registerView.alpha = 1
        tracksView.alpha = 0
        prizesView.alpha = 0
        
    }
    
    @IBAction func tracksAction(_ sender: UIButton) {
        
        register.setTitleColor(UIColor(red: 110/255, green: 120/255, blue: 130/255, alpha: 1.0), for: .normal)
        tracks.setTitleColor(UIColor(red: 15/255, green: 60/255, blue: 122/255, alpha: 1.0), for: .normal)
        prizes.setTitleColor(UIColor(red: 110/255, green: 120/255, blue: 130/255, alpha: 1.0), for: .normal)
        registerView.alpha = 0
        tracksView.alpha = 1
        prizesView.alpha = 0
        
    }
    
    @IBAction func prizesAction(_ sender: UIButton) {
        
        register.setTitleColor(UIColor(red: 110/255, green: 120/255, blue: 130/255, alpha: 1.0), for: .normal)
        tracks.setTitleColor(UIColor(red: 110/255, green: 120/255, blue: 130/255, alpha: 1.0), for: .normal)
        prizes.setTitleColor(UIColor(red: 15/255, green: 60/255, blue: 122/255, alpha: 1.0), for: .normal)
        registerView.alpha = 0
        tracksView.alpha = 0
        prizesView.alpha = 1
        
    }
    
}   // #78
