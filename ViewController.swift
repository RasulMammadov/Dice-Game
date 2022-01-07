//
//  ViewController.swift
//  Dice Game
//
//  Created by Fizza Hagverdizade on 07.01.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstdice: UIImageView!
    @IBOutlet weak var seconddice: UIImageView!
    
    let dices = [UIImage(named: "dice1"), UIImage(named: "dice2"), UIImage(named: "dice3"), UIImage(named: "dice4"), UIImage(named: "dice5"), UIImage(named: "dice6")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: Any) {
        
        let first = Int(arc4random_uniform(6))
        let second = Int(arc4random_uniform(6))
        
        firstdice.image = dices[first]
        seconddice.image = dices[second]
        
    }
    
}

