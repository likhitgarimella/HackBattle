//
//  ViewController.swift
//  HackBattle
//
//  Created by Likhit Garimella on 13/11/20.
//

import UIKit
import paper_onboarding

class ViewController: UIViewController, PaperOnboardingDataSource, PaperOnboardingDelegate {
    
    @IBOutlet weak var onboardingView: OnboardingView!
    @IBOutlet weak var getStartedButton: UIButton!
    
    @IBOutlet var one: UIImageView!
    @IBOutlet var two: UIImageView!
    @IBOutlet var three: UIImageView!
    @IBOutlet var four: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        onboardingView.dataSource = self
        onboardingView.delegate = self
        
    }
    
    func onboardingItemsCount() -> Int {
        return 4
    }
    
    func onboardingItem(at index: Int) -> OnboardingItemInfo {
        
        let titleColor = UIColor(red: 15/255, green: 60/255, blue: 122/255, alpha: 1.0)
        let backgroundColor = UIColor.white
        
        let titleFont = UIFont(name: "Lato-Bold", size: 34)!
        let descriptionFont = UIFont(name: "Lato-Regular", size: 14)!
        
        return [OnboardingItemInfo(informationImage: UIImage(named: "onboardOne")!, title: "About HackBattle", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", color: backgroundColor, titleColor: titleColor, descriptionColor: UIColor.darkGray, titleFont: titleFont, descriptionFont: descriptionFont),
        
                OnboardingItemInfo(informationImage: UIImage(named: "onboardTwo")!, title: "Hackathon Schedule", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", color: backgroundColor, titleColor: titleColor, descriptionColor: UIColor.darkGray, titleFont: titleFont, descriptionFont: descriptionFont),
        
                OnboardingItemInfo(informationImage: UIImage(named: "onboardThree")!, title: "Live Announcements", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", color: backgroundColor, titleColor: titleColor, descriptionColor: UIColor.darkGray, titleFont: titleFont, descriptionFont: descriptionFont),
        
                OnboardingItemInfo(informationImage: UIImage(named: "onboardFour")!, title: "FAQs", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", color: backgroundColor, titleColor: titleColor, descriptionColor: UIColor.darkGray, titleFont: titleFont, descriptionFont: descriptionFont)][index]
        
    }
    
    @IBAction func gotStarted(_ sender: Any) {
        
        let userDefaults = UserDefaults.standard
        
        userDefaults.setValue(true, forKey: "onboardingComplete")
        userDefaults.synchronize()
        
    }
    
    func onboardingConfigurationItem(_ item: OnboardingContentViewItem, index: Int) {
        
    }
    
    func onboardingWillTransitonToIndex(_ index: Int) {
        if index == 1 {
            if self.getStartedButton.alpha == 1 {
                UIView.animate(withDuration: 0.2, animations: {
                    self.getStartedButton.alpha = 0
                })
            }
        }
        if index == 2 {
            if self.getStartedButton.alpha == 1 {
                UIView.animate(withDuration: 0.2, animations: {
                    self.getStartedButton.alpha = 0
                })
            }
        }
    }
    
    func onboardingDidTransitonToIndex(_ index: Int) {
        if index == 3 {
            UIView.animate(withDuration: 0.2, animations: {
                self.getStartedButton.alpha = 1
            })
        }
    }
    
}   // #90
