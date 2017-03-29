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
        image.animationImages = (1...4).map{
            UIImage(named:"ios\($0)")!
        }
        
        /*image.animationImages = [
            UIImage(named:"ios1")!,
            UIImage(named:"ios2")!
        ]
    */
    
       image.contentMode = .scaleAspectFit
        
        image.animationDuration = 1
        image.startAnimating()
 



    }
    
    override func viewDidLoad ( ) {
        super.viewDidLoad()
               //Dispose of any resources that can be recreated.
    }
}
    


