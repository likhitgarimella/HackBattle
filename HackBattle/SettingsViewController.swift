//
//  SettingsViewController.swift
//  HackBattle
//
//  Created by Likhit Garimella on 08/11/20.
//

import UIKit

class SettingsViewController: UIViewController {
    
    // Outlets
    @IBOutlet var modeSwitch: UISwitch!
    
    let appMode = Mode()
    
    func SwitchToDarkMode() {
        
        view.backgroundColor = .black
        self.tabBarController?.tabBar.backgroundColor = .black
        UITabBar.appearance().barTintColor = .black
        
    }
    
    func SwitchToLightMode() {
        
        view.backgroundColor = .white
        self.tabBarController?.tabBar.backgroundColor = .white
        UITabBar.appearance().barTintColor = .white
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        appMode.mode = false
        // print(appMode.mode)
        
    }
    
    @IBAction func switchMode(_ sender: UISwitch) {
        
        if modeSwitch.isOn == true {
            appMode.mode = true
            // print(appMode.mode)
            SwitchToDarkMode()
        }
        
        if modeSwitch.isOn == false {
            appMode.mode = false
            // print(appMode.mode)
            SwitchToLightMode()
        }
        
    }
    
}   // #58
