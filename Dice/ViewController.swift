//
//  ViewController.swift
//  Dice
//
//  Created by DDUKK8 on 21/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dice1: UIImageView!
    
    @IBOutlet weak var dice2: UIImageView!
    @IBOutlet weak var label: UILabel!
    var score = 0
    var images=["dice1","dice2","dice3","dice4","dice5","dice6"]
    override func viewDidLoad() {
        super.viewDidLoad()
        dice1.image = UIImage(named: "dice1")
        dice2.image = UIImage(named: "dice2")
        
        // Do any additional setup after loading the view.
    }

    
    @IBAction func rollDice(_ sender: Any) {
        var a = Int.random(in: 0...5)
        var b = Int.random(in: 0...5)
        dice1.image = UIImage(named: images[a])
        dice2.image = UIImage(named: images[b])
       
        
        if (a == b){
            score+=1
        }
        
        label.text=String(score)
        
    }
    
}
    
    


