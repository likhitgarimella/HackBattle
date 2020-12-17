//
//  FaqTableViewCell.swift
//  HackBattle
//
//  Created by Likhit Garimella on 13/12/20.
//

import UIKit

class FaqTableViewCell: UITableViewCell {
    
    // Outlets
    @IBOutlet var serialNumber: UIImageView!
    @IBOutlet var faqView: UIView!
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    @IBOutlet var plusOutlet: UIButton!
    
    @IBOutlet weak var spaceConstraint: NSLayoutConstraint!
    @IBOutlet weak var viewHeightConstraint: NSLayoutConstraint!
    
    func Properties() {
        
        faqView.layer.cornerRadius = 8
        faqView.layer.shadowColor = UIColor(red: 15/255, green: 60/255, blue: 122/255, alpha: 1.0).cgColor
        faqView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        faqView.layer.shadowRadius = 4.0
        faqView.layer.shadowOpacity = 0.28
        faqView.layer.masksToBounds = false
        
        answerLabel.isHidden = true
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        Properties()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
        
    }
    
    @IBAction func expand(_ sender: UIButton) {
        
        faqView.layoutIfNeeded()
        spaceConstraint.constant = 200
        viewHeightConstraint.constant = 120
        answerLabel.isHidden = false
        
    }
    
}   // #59
