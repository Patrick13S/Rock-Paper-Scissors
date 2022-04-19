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

    @IBOutlet weak var myChoice: UIImageView!
    
    @IBAction func tapGesture(_ sender: Any)
    {
        var randomnumber = Int.random(in: 0...2)
        //var rock =
        myChoice.image = UIImage (named: "rock")
    }
    
}

