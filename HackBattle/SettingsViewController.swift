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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        appMode.mode = false
        // print(appMode.mode)
        
    }
    
    @IBAction func switchMode(_ sender: UISwitch) {
        
        if modeSwitch.isOn == true {
            appMode.mode = true
            // print(appMode.mode)
        }
        
        if modeSwitch.isOn == false {
            appMode.mode = false
            // print(appMode.mode)
        }
        
    }
    
}   // #40
