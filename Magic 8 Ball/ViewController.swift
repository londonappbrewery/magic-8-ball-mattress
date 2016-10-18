//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Felipe Rojas on 10/17/16.
//  Copyright © 2016 felro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImageView: UIImageView!
    
    var randomBallIndex : Int = 0
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5", "ball6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        ballImageUpdate()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        
    ballImageUpdate()
        
    }
    
    func ballImageUpdate(){
        
        randomBallIndex = Int(arc4random_uniform(5))
        
        ballImageView.image = UIImage(named: ballArray[randomBallIndex])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        ballImageUpdate()
        
    }

}

