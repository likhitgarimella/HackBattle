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
    
    @IBOutlet var one: UIView!
    @IBOutlet var two: UIView!
    @IBOutlet var three: UIView!
    @IBOutlet var four: UIView!

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
        
        return [OnboardingItemInfo(informationImage: UIImage(named: "onboardOne")!, title: "About HackBattle", description: "HackBattle’20 is a 36 hour Hack-a-Thon where Tomorrow's Developers are pitted against each other in a series of tracks that test their skills in the fields of Design, Web and Mobile App Development, Machine Learning, Blockchain and so much more. Apart from this, we also have keynote sessions by speakers from reputed companies, expert guidance by mentors and several fun activities, with chances to win exciting prizes!", color: backgroundColor, titleColor: titleColor, descriptionColor: UIColor.darkGray, titleFont: titleFont, descriptionFont: descriptionFont),
        
                OnboardingItemInfo(informationImage: UIImage(named: "onboardTwo")!, title: "Hackathon Schedule", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", color: backgroundColor, titleColor: titleColor, descriptionColor: UIColor.darkGray, titleFont: titleFont, descriptionFont: descriptionFont),
        
                OnboardingItemInfo(informationImage: UIImage(named: "onboardThree")!, title: "Live Announcements", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", color: backgroundColor, titleColor: titleColor, descriptionColor: UIColor.darkGray, titleFont: titleFont, descriptionFont: descriptionFont),
        
                OnboardingItemInfo(informationImage: UIImage(named: "onboardFour")!, title: "FAQs", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", color: backgroundColor, titleColor: titleColor, descriptionColor: UIColor.darkGray, titleFont: titleFont, descriptionFont: descriptionFont)][index]
        
    }
    
    ///
    func alreadyShown() -> Bool {
        return UserDefaults.standard.bool(forKey: "already_shown_onboarding")
    }
    
    ///
    private func markAsSeen() {
        UserDefaults.standard.set(true, forKey: "already_shown_onboarding")
    }
    
    @IBAction func gotStarted(_ sender: Any) {
        markAsSeen()
        dismiss(animated: true)
    }
    
    func onboardingConfigurationItem(_ item: OnboardingContentViewItem, index: Int) {
        
    }
    
    func onboardingWillTransitonToIndex(_ index: Int) {
        
        if index == 0 {
            one.backgroundColor = UIColor(red: 15/255, green: 60/255, blue: 122/255, alpha: 1.0)
            two.backgroundColor = UIColor(red: 196/255, green: 196/255, blue: 196/255, alpha: 1.0)
            three.backgroundColor = UIColor(red: 196/255, green: 196/255, blue: 196/255, alpha: 1.0)
            four.backgroundColor = UIColor(red: 196/255, green: 196/255, blue: 196/255, alpha: 1.0)
        }
        if index == 1 {
            two.backgroundColor = UIColor(red: 15/255, green: 60/255, blue: 122/255, alpha: 1.0)
            one.backgroundColor = UIColor(red: 196/255, green: 196/255, blue: 196/255, alpha: 1.0)
            three.backgroundColor = UIColor(red: 196/255, green: 196/255, blue: 196/255, alpha: 1.0)
            four.backgroundColor = UIColor(red: 196/255, green: 196/255, blue: 196/255, alpha: 1.0)
        }
        if index == 2 {
            three.backgroundColor = UIColor(red: 15/255, green: 60/255, blue: 122/255, alpha: 1.0)
            one.backgroundColor = UIColor(red: 196/255, green: 196/255, blue: 196/255, alpha: 1.0)
            two.backgroundColor = UIColor(red: 196/255, green: 196/255, blue: 196/255, alpha: 1.0)
            four.backgroundColor = UIColor(red: 196/255, green: 196/255, blue: 196/255, alpha: 1.0)
        }
        if index == 3 {
            four.backgroundColor = UIColor(red: 15/255, green: 60/255, blue: 122/255, alpha: 1.0)
            one.backgroundColor = UIColor(red: 196/255, green: 196/255, blue: 196/255, alpha: 1.0)
            two.backgroundColor = UIColor(red: 196/255, green: 196/255, blue: 196/255, alpha: 1.0)
            three.backgroundColor = UIColor(red: 196/255, green: 196/255, blue: 196/255, alpha: 1.0)
        }
        
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
    
}   // #126
