//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImageView1.image = UIImage(named: "DiceFive")
        diceImageView2.image = UIImage(named: "DiceFour")
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageView1.image = UIImage(named: getRandomDiceImageName())
        diceImageView2.image = UIImage(named: getRandomDiceImageName())
    }
    
    func getRandomDiceImageName()->String{
            let randomName = ["One","Two","Three","Four","Five","Six"].randomElement()
            return "Dice"+randomName!;
        }
    
}

