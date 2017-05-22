//
//  ViewController.swift
//  scoreboard
//
//  Created by 20151104690 on 17/3/27.
//  Copyright © 2017年 4690. All rights reserved.
//

import UIKit
var a:Int = 0
var b:Int = 0
var pic:Int = 0
var A:Int = 0
var B:Int = 0
class ViewController: UIViewController,UIActionSheetDelegate,UIImagePickerControllerDelegate,
UINavigationControllerDelegate{
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
        image.animationDuration = 10
        image.startAnimating()
        }
    /*@IBOutlet weak var resule: UILabel!
    
    @IBAction func re(_ sender: UIButton) {
        resule.text=resule.text!+"红队"    }
 */
    
    //actionsheet
    
    @IBOutlet weak var Redimage: UIImageView!
    
    @IBOutlet weak var BlueImage: UIImageView!
    
    @IBAction func red(_ sender: UIButton) {
       /*actionsheet下弹提示窗口
         let actionSheet1 = UIActionSheet(title: "选取图片", delegate: self, cancelButtonTitle: "取消", destructiveButtonTitle: "从图库中选取",otherButtonTitles:"拍照")
    actionSheet1.show(in: view)
         */
        //调用系统相册添加选手图片⬇️
            if(pic==0){
                A=1
                B=0
                if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
                    let picker = UIImagePickerController()
                    picker.delegate = self
                    picker.sourceType = UIImagePickerControllerSourceType.photoLibrary
                    self.present(picker,animated: true, completion: {
                        ()->Void in
                        }
                    )
                    
                }else{
                    print("读取相册错误")
                }
            }
        }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        print(info)
        let image:UIImage!
        image=info[UIImagePickerControllerOriginalImage] as! UIImage
        if(A==1){
            Redimage.image = image
        }
        else if(B==1){
            BlueImage.image = image
        }
        picker.dismiss(animated: true, completion: {
            () -> Void in
        })
    }



       @IBAction func blue(_ sender: UIButton) {
        /*actionsheet下弹提示窗口
         let actionSheet1 = UIActionSheet(title: "选取图片", delegate: self, cancelButtonTitle: "取消", destructiveButtonTitle: "从图库中选取",otherButtonTitles:"拍照")
        actionSheet1.show(in: view)
         */
        if(pic==0){
            A=0
            B=1
            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
                let picker = UIImagePickerController()
                picker.delegate = self
                picker.sourceType = UIImagePickerControllerSourceType.photoLibrary
                self.present(picker,animated: true, completion: {
                    ()->Void in
                }
                )
                
            }else{
                print("读取相册错误")
            }
        }
    }
    
    //分数加减
    @IBOutlet weak var red: UILabel!
    @IBAction func stepperRed(_ sender: UIStepper) {
        red.text = "\(sender.value)"
        /*if(sender.value==11){
                     }
      */
            
            if(sender.value>=11 ){
                a = a+1
                redscore.text=("\(a)")
            }
        if(a==4){
            let alertwindow = UIAlertView(title: "比赛结果", message: "红队胜利", delegate: self, cancelButtonTitle: "确认")
            alertwindow.show()
            a = 0
            sender.value = 0
            }
        }
        
   
    
    @IBOutlet weak var blue: UILabel!
    @IBAction func stepperBlue(_ sender: UIStepper) {
        blue.text = "\(sender.value)"
        if(sender.value>=11){
            b = b+1
            bluescore.text = ("\(b)")
        }
        
        if(b==4){
            let alertwindow = UIAlertView(title: "比赛结果", message: "蓝队胜利", delegate: self, cancelButtonTitle: "确认")
            alertwindow.show()
            b = 0
            sender.value = 0
            
        }
    }
        @IBAction func restart(_ sender: UIButton) {
        red.text = "0"
        blue.text = "0"
        redscore.text = "0"
        bluescore.text = "0"
    }
    
    @IBOutlet weak var redscore: UILabel!
    
    @IBOutlet weak var bluescore: UILabel!
    
       override func viewDidLoad ( ) {
        super.viewDidLoad()
               //Dispose of any resources that can be recreated.
    }
}
    


