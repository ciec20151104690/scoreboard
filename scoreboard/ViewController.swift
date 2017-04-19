//
//  ViewController.swift
//  scoreboard
//
//  Created by 20151104690 on 17/3/27.
//  Copyright © 2017年 4690. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBAction func playpicture(_ sender: UIButton) {
        /*image.animationImages = (1...4).map{
            UIImage(named:"ios\($0)")!
        }*/

        image.animationImages = [
            UIImage(named:"乒乓球桌面示意图")!,
            UIImage(named:"ios1")!
        ]
        image.contentMode = .scaleAspectFit
        
        image.animationDuration = 10000000
        image.startAnimating()
        }
   
    @IBOutlet weak var Redimage: UIImageView!

    
    
    
    
    
    
    //分数加减
    @IBOutlet weak var red: UILabel!
    @IBAction func stepperRed(_ sender: UIStepper) {
        red.text = "\(sender.value)"
        
    }
    @IBOutlet weak var blue: UILabel!
    @IBAction func stepperBlue(_ sender: UIStepper) {
         blue.text = "\(sender.value)"    }
//分数加减
    
       override func viewDidLoad ( ) {
        super.viewDidLoad()
               //Dispose of any resources that can be recreated.
    }
}
    


