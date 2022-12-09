//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
     
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [ UIImage(imageLiteralResourceName: "DiceOne"),UIImage(imageLiteralResourceName: "DiceTwo"),UIImage(imageLiteralResourceName: "DiceThree"),UIImage(imageLiteralResourceName: "DiceFour"),UIImage(imageLiteralResourceName: "DiceFive"),UIImage(imageLiteralResourceName: "DiceSix")]
        
        diceImageViewOne.image = diceArray[Int.random(in: 0...5)]
        
        diceImageViewTwo.image = diceArray.randomElement()
        //ambele metode de randomizare fac acelasi lucru
        
    }
    
    //functie activare event when shaking
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        let diceArray = [ UIImage(imageLiteralResourceName: "DiceOne"),UIImage(imageLiteralResourceName: "DiceTwo"),UIImage(imageLiteralResourceName: "DiceThree"),UIImage(imageLiteralResourceName: "DiceFour"),UIImage(imageLiteralResourceName: "DiceFive"),UIImage(imageLiteralResourceName: "DiceSix")]
        
        diceImageViewOne.image = diceArray[Int.random(in: 0...5)]
        
        diceImageViewTwo.image = diceArray.randomElement()
        //ambele metode de randomizare fac acelasi lucru
    }
    

}

