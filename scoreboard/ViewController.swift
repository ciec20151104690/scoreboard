//
//  ViewController.swift
//  scoreboard
//
//  Created by 20151104690 on 17/3/27.
//  Copyright © 2017年 4690. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIActionSheetDelegate{

    @IBOutlet weak var image: UIImageView!
    @IBAction func playpicture(_ sender: UIButton) {
        /*image.animationImages = (1...4).map{
            UIImage(named:"ios\($0)")!
        }*/

        image.animationImages = [
            UIImage(named:"乒乓球桌面示意图副本 2")!,
            UIImage(named:"乒乓球桌面示意图副本")!
        ]
        image.contentMode = .scaleAspectFit
        image.animationDuration = 10000
        image.startAnimating()
        }
    /*@IBOutlet weak var resule: UILabel!
    
    @IBAction func re(_ sender: UIButton) {
        resule.text=resule.text!+"红队"    }
 */
    
    @IBAction func result(_ sender: UIButton) {
        let alertwindow = UIAlertView(title: "比赛结果", message: "红队胜利", delegate: self, cancelButtonTitle: "确认")

        alertwindow.show()
        
      
        
        
    }
    
    @IBOutlet weak var label1: UILabel!
    @IBAction func segChanged(_ sender: UISegmentedControl) {
        label1.text = sender.titleForSegment(at:sender.selectedSegmentIndex)
    }
    
    
    
    
    
  
    
    //actionsheet
    @IBOutlet weak var Redimage: UIImageView!

    @IBAction func red(_ sender: UIButton) {
        let actionSheet1 = UIActionSheet(title: "选取图片", delegate: self, cancelButtonTitle: "取消", destructiveButtonTitle: "从图库中选取",otherButtonTitles:"拍照")
        actionSheet1.show(in: view)
    }
    @IBAction func blue(_ sender: UIButton) {
        let actionSheet1 = UIActionSheet(title: "选取图片", delegate: self, cancelButtonTitle: "取消", destructiveButtonTitle: "从图库中选取",otherButtonTitles:"拍照")
        actionSheet1.show(in: view)
    }
 
    //actionsheet
    
    
    
    
    
    
    
    
    
    
 
    
    
    
    
    
    
    
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
    


