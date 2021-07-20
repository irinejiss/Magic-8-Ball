//
//  ViewController.swift
//  Magic 8 ball
//
//  Created by Irine Babu on 20/07/21.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBallNo : Int = 0
  
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
   
    @IBOutlet weak var iconImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBallImg()
        // Do any additional setup after loading the view.
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
    newBallImg()
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImg()
    }
    
    func newBallImg(){
        randomBallNo = Int(arc4random_uniform(4))
        iconImage.image = UIImage(named: ballArray[randomBallNo])
        }
    }

