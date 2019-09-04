//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Treinamento on 8/15/19.
//  Copyright © 2019 cynthiamayumiwatanabeyamaoto. All rights reserved.
//

import UIKit
let BallEightArray = ["ball1","ball2", "ball3", "ball4", "ball5"]


class ViewController: UIViewController {
    @IBOutlet weak var ballEight: UIImageView!
    
    //definir as variaveis
    var randomBallEight: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateBallEight()
    }
    

    @IBAction func pressButton(_ sender: Any) {
    updateBallEight()
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBallEight()
    }
    

    func updateBallEight()  {
        randomBallEight = Int.random(in: 0...4)
        
        ballEight.image = UIImage(named: BallEightArray [randomBallEight])
        
    }
    
}

