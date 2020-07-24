//
//  ViewController.swift
//  Cards
//
//  Created by Kiam Ahmed on 23/7/20.
//  Copyright © 2020 Kiam Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var playerScore = 0.0
    var cpuScore = 0.0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealTapped(_ sender: Any) //Deal Button Tapped
    {
        let leftRand:Int = Int.random(in: 2...14)
        let rightRand:Int = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftRand)")
        rightImageView.image = UIImage(named: "card\(rightRand)")
        
        if leftRand > rightRand
        {
            playerScore+=1
            
            leftScoreLabel.text = String(playerScore)
        }
        else if leftRand < rightRand
        {
            cpuScore+=1
            
            rightScoreLabel.text = String(cpuScore)
        }
        else{
            playerScore+=0.5
            cpuScore+=0.5
            
            leftScoreLabel.text = String(playerScore)
            rightScoreLabel.text = String(cpuScore)
        }
    }
      
}

 
