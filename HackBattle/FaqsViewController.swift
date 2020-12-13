//
//  FaqsViewController.swift
//  HackBattle
//
//  Created by Likhit Garimella on 08/11/20.
//

import UIKit

class FaqsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // Outlets
    @IBOutlet weak var faqTableView: UITableView!
    
    var serialNumbers = [UIImage(named: "1"), UIImage(named: "2"), UIImage(named: "3"), UIImage(named: "4"), UIImage(named: "5"), UIImage(named: "6")]
    
    var questions = ["What is a hackathon?", "Where will the hackathon take place?", "I haven’t had much experience coding. Can I still attend?", "How do I apply?", "Who is eligible to participate?", "How much will it cost me to participate?"]
    
    var answers = ["A hackathon is a programming competition in which competitors use technology to build innovative projects within the given time frame. There will be opportunities to win cool prizes, learn from our key-note speakers, and network with our sponsors.", "It is hosted on devfolio and live events will be conducted via Airmeet. Mode of Communication for all the participants during the hackathon will be discord.", "Of course! HackBattle is open to hackers of all levels of experience. We encourage you to register and bring an open mind. There will be workshops available that cater to different levels - get ready to learn and have fun!", "You can apply through Devfolio. One must apply in teams of atleast 3 and atmost 5.", "All current college, vocational and university students of any streams are eligible to participate.", "The only thing you’ll have to invest for the Hackathon, is your time. The registration is free of cost."]
    
    func Properties() {
        
        faqTableView.backgroundColor = UIColor.white
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Properties()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return serialNumbers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "FaqTableViewCell", for: indexPath as IndexPath) as! FaqTableViewCell
        cell1.backgroundColor = UIColor.white
        cell1.serialNumber.image = serialNumbers[indexPath.row]
        cell1.questionLabel.text = questions[indexPath.row]
        cell1.answerLabel.text = answers[indexPath.row]
        return cell1
    }
    
}   // #48
