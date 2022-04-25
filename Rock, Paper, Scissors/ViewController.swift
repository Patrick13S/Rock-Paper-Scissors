//
//  ViewController.swift
//  Rock, Paper, Scissors
//
//  Created by Patrick Stroyan on 4/7/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var RockPaperScissors: [UIImageView]!
   
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }
 var userChoice = 0
    @IBOutlet weak var myChoice: UIImageView!
    
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet var stackView: UIView!
    
    @IBOutlet weak var robotChoice: UIImageView!
    @IBAction func tapGesture(_ sender: Any)
    {
        var randomnumber = Int.random(in: 0...2)
        //var rock =
        switch randomnumber{
            
        case 0:  robotChoice.image = UIImage (named: "rock")
        case 1: robotChoice.image = UIImage (named:"paper")
            
        case 2: robotChoice.image = UIImage (named:"scissors")
        default:  robotChoice.image = UIImage (named:"")
          
        }
        
        let selectedPoint = ((sender as! AnyObject).location(in: stackView))
        
    
        for label in RockPaperScissors
        {
        if  label.frame.contains(selectedPoint)
            { userChoice = label.tag
            switch userChoice {
                
            case 0:  myChoice.image = UIImage (named: "rock")
            case 1: myChoice.image = UIImage (named:"paper")
                
            case 2: myChoice.image = UIImage (named:"scissors")
            default:  myChoice.image = UIImage (named:"")
              
        }
        }
           
            if  userChoice == randomnumber {
                winnerLabel.text = "tie"
    
            }
            
            if userChoice == 0 && randomnumber == 2 {
                winnerLabel.text = "you win!"
            }
            
            if userChoice == 1 && randomnumber == 0 {
                winnerLabel.text = "you win!"
            }
            if userChoice == 2 && randomnumber == 1 {
                winnerLabel.text = "you win!"
            }
            if userChoice == 0 && randomnumber == 1 {
                winnerLabel.text = "you lose."
            }
            if userChoice == 1 && randomnumber == 2 {
                winnerLabel.text = "you lose."
            }
            if userChoice == 2 && randomnumber == 0 {
                winnerLabel.text = "you lose."
            }

            
    }
    
}

}
