//
//  ViewController.swift
//  munja puzzle
//
//  Created by Petar Djordjevic on 5/1/17.
//  Copyright © 2017 g11. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageIsMoved = false
    var imageIsMoved2 = false
    var imageIsMoved3 = false
    var imageIsMoved4 = false
    var imageIsMoved5 = false
    var imageIsMoved6 = false
    var imageIsMoved7 = false
    var imageIsMoved8 = false

    var tip1 = UIImageView()
    var tip2 = UIImageView()
    var tip3 = UIImageView()
    var tip4 = UIImageView()
    var tip5 = UIImageView()
    var tip6 = UIImageView()
    var tip7 = UIImageView()
    var tip8 = UIImageView()
    var tip9 = UIImageView()
    var tip10 = UIImageView()
    var tip11 = UIImageView()
    var tip12 = UIImageView()
    var tip13 = UIImageView()
    var tip14 = UIImageView()
    var tip15 = UIImageView()
    var tip16 = UIImageView()
    var tip17 = UIImageView()
    var tip18 = UIImageView()
    

    
    var affectedCounter = 0
    var missedCounter = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        showYes()
        showWrong()
        hideYes()
        hideWrong()
        affectedMissedCounter()
        startGame()
        yesWrong()
    }
    @IBOutlet weak var labelOfAffectedImages: UILabel!
    @IBOutlet weak var labelOfMissedImages: UILabel!
    
    func yesWrong() {
        let imageYes = UIImageView()
        imageYes.image = UIImage(named: "yes.png")
        imageYes.frame = CGRect(x: 112, y: 258, width: 150, height: 150)
        view.addSubview(imageYes)
        tip17 = imageYes
        tip17.isHidden = true
        
        
        let imageWrong = UIImageView()
        imageWrong.image = UIImage(named: "wrong.png")
        imageWrong.frame = CGRect(x: 112, y: 258, width: 150, height: 150)
        view.addSubview(imageWrong)
        tip18 = imageWrong
        imageWrong.isHidden = true
        
    }
    func showYes() {
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.hideYes), userInfo: nil, repeats: false)
    }
    
    
    func hideYes() {
        tip17.isHidden = true
    }
    func showWrong() {
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.hideWrong), userInfo: nil, repeats: false)
    }
    func hideWrong() {
        tip18.isHidden = true
    }
   
    
    @IBAction func reset(_ sender: Any) {
        for member in view.subviews {
            if member is UIImageView && (member.tag == 1 || member.tag == 2 || member.tag == 3 || member.tag == 4 || member.tag == 5 || member.tag == 6 || member.tag == 7 || member.tag == 8 || member.tag == 9 || member.tag == 10 || member.tag == 11 || member.tag == 12 || member.tag == 13 || member.tag == 14 || member.tag == 15 || member.tag == 16) {
                member.removeFromSuperview()
            }
        }
        startGame()
        imageIsMoved = false
        imageIsMoved2 = false
        imageIsMoved3 = false
        imageIsMoved4 = false
        imageIsMoved5 = false
        imageIsMoved6 = false
        imageIsMoved7 = false
        imageIsMoved8 = false
        affectedCounter = 0
        missedCounter = 0
        labelOfAffectedImages.text = String(0)
        labelOfMissedImages.text = String(0)
        yesWrong()
        
    
        

    }

    func startGame() {
        let image1 = UIImageView()
        image1.image = UIImage(named: "slikaKola1.jpg")
        image1.frame.size = CGSize(width: 50, height: 50)
        view.addSubview(image1)
        image1.tag = 1
        let pan1 = UIPanGestureRecognizer(target: self, action: #selector(ViewController.move(_:)))
        image1.addGestureRecognizer(pan1)
        image1.isUserInteractionEnabled = true
        tip1 = image1
        let image2 = UIImageView()
        image2.image = UIImage(named: "slikaKola2.jpg")
        image2.frame.size = CGSize(width: 50, height: 50)
        view.addSubview(image2)
        image2.tag = 2
        tip2 = image2
        let pan2 = UIPanGestureRecognizer(target: self, action: #selector(ViewController.move2(_:)))
        image2.addGestureRecognizer(pan2)
        image2.isUserInteractionEnabled = true
        let image3 = UIImageView()
        image3.image = UIImage(named: "slikaKola3.jpg")
        image3.frame.size = CGSize(width: 50, height: 50)
        view.addSubview(image3)
        image3.tag = 3
        tip3 = image3
        let pan3 = UIPanGestureRecognizer(target: self, action: #selector(ViewController.move3(_:)))
        image3.addGestureRecognizer(pan3)
        image3.isUserInteractionEnabled = true
        let image4 = UIImageView()
        image4.image = UIImage(named: "slikaKola4.jpg")
        image4.frame.size = CGSize(width: 50, height: 50)
        view.addSubview(image4)
        image4.tag = 4
        tip4 = image4
        let pan4 = UIPanGestureRecognizer(target: self, action: #selector(ViewController.move4(_:)))
        image4.addGestureRecognizer(pan4)
        image4.isUserInteractionEnabled = true
        let image5 = UIImageView()
        image5.image = UIImage(named: "slikaKola5.jpg")
        image5.frame.size = CGSize(width: 50, height: 50)
        view.addSubview(image5)
        image5.tag = 5
        tip5 = image5
        let pan5 = UIPanGestureRecognizer(target: self, action: #selector(ViewController.move5(_:)))
        image5.addGestureRecognizer(pan5)
        image5.isUserInteractionEnabled = true
        let image6 = UIImageView()
        image6.image = UIImage(named: "slikaKola6.jpg")
        image6.frame.size = CGSize(width: 50, height: 50)
        view.addSubview(image6)
        image6.tag = 6
        tip6 = image6
        let pan6 = UIPanGestureRecognizer(target: self, action: #selector(ViewController.move6(_:)))
        image6.addGestureRecognizer(pan6)
        image6.isUserInteractionEnabled = true
        let image7 = UIImageView()
        image7.image = UIImage(named: "slikaKola7.jpg")
        image7.frame.size = CGSize(width: 50, height: 50)
        view.addSubview(image7)
        image7.tag = 7
        tip7 = image7
        let pan7 = UIPanGestureRecognizer(target: self, action: #selector(ViewController.move7(_:)))
        image7.addGestureRecognizer(pan7)
        image7.isUserInteractionEnabled = true
        let image8 = UIImageView()
        image8.image = UIImage(named: "slikaKola8.jpg")
        image8.frame.size = CGSize(width: 50, height: 50)
        view.addSubview(image8)
        image8.tag = 8
        tip8 = image8
        let pan8 = UIPanGestureRecognizer(target: self, action: #selector(ViewController.move8(_:)))
        image8.addGestureRecognizer(pan8)
        image8.isUserInteractionEnabled = true
        let bgImage = UIImageView()
        bgImage.image = UIImage(named: "okvir.png")
        bgImage.frame = CGRect(x: 42, y: 175, width: 289, height: 319)
        view.addSubview(bgImage)
        let image9 = UIImageView()
        image9.image = UIImage(named: "slika1Retro.jpg")
        image9.frame.size = CGSize(width: 80, height: 80)
        view.addSubview(image9)
        image9.tag = 9
        tip9 = image9
        let image10 = UIImageView()
        image10.image = UIImage(named: "slika2Retro.jpg")
        image10.frame.size = CGSize(width: 80, height: 80)
        view.addSubview(image10)
        image10.tag = 10
        tip10 = image10
        let image11 = UIImageView()
        image11.image = UIImage(named: "slika3Retro.jpg")
        image11.frame.size = CGSize(width: 80, height: 80)
        view.addSubview(image11)
        image11.tag = 11
        tip11 = image11
        let image12 = UIImageView()
        image12.image = UIImage(named: "slika4Retro.jpg")
        image12.frame.size = CGSize(width: 80, height: 80)
        view.addSubview(image12)
        image12.tag = 12
        tip12 = image12
        let image13 = UIImageView()
        image13.image = UIImage(named: "slika5Retro.jpg")
        image13.frame.size = CGSize(width: 80, height: 80)
        view.addSubview(image13)
        image13.tag = 13
        tip13 = image13
        let image14 = UIImageView()
        image14.image = UIImage(named: "slikaRetro6.jpg")
        image14.frame.size = CGSize(width: 80, height: 80)
        view.addSubview(image14)
        image14.tag = 14
        tip14 = image14
        let image15 = UIImageView()
        image15.image = UIImage(named: "slikaRetro7.jpg")
        image15.frame.size = CGSize(width: 80, height: 80)
        view.addSubview(image15)
        image15.tag = 15
        tip15 = image15
        let image16 = UIImageView()
        image16.image = UIImage(named: "slikaRetro8.jpg")
        image16.frame.size = CGSize(width: 80, height: 80)
        view.addSubview(image16)
        image16.tag = 16
        tip16 = image16
        
        let randomNumber = arc4random() % UInt32(7)
        if randomNumber == 0 {
            image1.frame.origin = CGPoint(x: 16, y: 36)
            image2.frame.origin = CGPoint(x: 74, y: 36)
            image3.frame.origin = CGPoint(x: 132, y: 36)
            image4.frame.origin = CGPoint(x: 190, y: 36)
            image5.frame.origin = CGPoint(x: 248, y: 36)
            image6.frame.origin = CGPoint(x: 306, y: 36)
            image7.frame.origin = CGPoint(x: 16, y: 94)
            image8.frame.origin = CGPoint(x: 74, y: 94)
            image9.frame.origin = CGPoint(x: 51, y: 196)
            image10.frame.origin = CGPoint(x: 51, y: 300)
            image11.frame.origin = CGPoint(x: 51, y: 404)
            image12.frame.origin = CGPoint(x: 147, y: 239)
            image13.frame.origin = CGPoint(x: 147, y: 352)
            image14.frame.origin = CGPoint(x: 242, y: 196)
            image15.frame.origin = CGPoint(x: 242, y: 300)
            image16.frame.origin = CGPoint(x: 242, y: 404)
        } else if randomNumber == 1 {
            
            image2.frame.origin = CGPoint(x: 16, y: 36)
            image3.frame.origin = CGPoint(x: 74, y: 36)
            image4.frame.origin = CGPoint(x: 132, y: 36)
            image5.frame.origin = CGPoint(x: 190, y: 36)
            image6.frame.origin = CGPoint(x: 248, y: 36)
            image7.frame.origin = CGPoint(x: 306, y: 36)
            image8.frame.origin = CGPoint(x: 16, y: 94)
            image1.frame.origin = CGPoint(x: 74, y: 94)
            image10.frame.origin = CGPoint(x: 51, y: 196)
            image11.frame.origin = CGPoint(x: 51, y: 300)
            image12.frame.origin = CGPoint(x: 51, y: 404)
            image13.frame.origin = CGPoint(x: 147, y: 239)
            image14.frame.origin = CGPoint(x: 147, y: 352)
            image15.frame.origin = CGPoint(x: 242, y: 196)
            image16.frame.origin = CGPoint(x: 242, y: 300)
            image9.frame.origin = CGPoint(x: 242, y: 404)
        } else if randomNumber == 2 {
            
            image3.frame.origin = CGPoint(x: 16, y: 36)
            image4.frame.origin = CGPoint(x: 74, y: 36)
            image5.frame.origin = CGPoint(x: 132, y: 36)
            image6.frame.origin = CGPoint(x: 190, y: 36)
            image7.frame.origin = CGPoint(x: 248, y: 36)
            image8.frame.origin = CGPoint(x: 306, y: 36)
            image1.frame.origin = CGPoint(x: 16, y: 94)
            image2.frame.origin = CGPoint(x: 74, y: 94)
            image11.frame.origin = CGPoint(x: 51, y: 196)
            image12.frame.origin = CGPoint(x: 51, y: 300)
            image13.frame.origin = CGPoint(x: 51, y: 404)
            image14.frame.origin = CGPoint(x: 147, y: 239)
            image15.frame.origin = CGPoint(x: 147, y: 352)
            image16.frame.origin = CGPoint(x: 242, y: 196)
            image9.frame.origin = CGPoint(x: 242, y: 300)
            image10.frame.origin = CGPoint(x: 242, y: 404)
        }else if randomNumber == 3 {
            image4.frame.origin = CGPoint(x: 16, y: 36)
            image5.frame.origin = CGPoint(x: 74, y: 36)
            image6.frame.origin = CGPoint(x: 132, y: 36)
            image7.frame.origin = CGPoint(x: 190, y: 36)
            image8.frame.origin = CGPoint(x: 248, y: 36)
            image1.frame.origin = CGPoint(x: 306, y: 36)
            image2.frame.origin = CGPoint(x: 16, y: 94)
            image3.frame.origin = CGPoint(x: 74, y: 94)
            image12.frame.origin = CGPoint(x: 51, y: 196)
            image13.frame.origin = CGPoint(x: 51, y: 300)
            image14.frame.origin = CGPoint(x: 51, y: 404)
            image15.frame.origin = CGPoint(x: 147, y: 239)
            image16.frame.origin = CGPoint(x: 147, y: 352)
            image9.frame.origin = CGPoint(x: 242, y: 196)
            image10.frame.origin = CGPoint(x: 242, y: 300)
            image11.frame.origin = CGPoint(x: 242, y: 404)
        }else if randomNumber == 4 {
            image5.frame.origin = CGPoint(x: 16, y: 36)
            image6.frame.origin = CGPoint(x: 74, y: 36)
            image7.frame.origin = CGPoint(x: 132, y: 36)
            image8.frame.origin = CGPoint(x: 190, y: 36)
            image1.frame.origin = CGPoint(x: 248, y: 36)
            image2.frame.origin = CGPoint(x: 306, y: 36)
            image3.frame.origin = CGPoint(x: 16, y: 94)
            image4.frame.origin = CGPoint(x: 74, y: 94)
            image13.frame.origin = CGPoint(x: 51, y: 196)
            image14.frame.origin = CGPoint(x: 51, y: 300)
            image15.frame.origin = CGPoint(x: 51, y: 404)
            image16.frame.origin = CGPoint(x: 147, y: 239)
            image9.frame.origin = CGPoint(x: 147, y: 352)
            image10.frame.origin = CGPoint(x: 242, y: 196)
            image11.frame.origin = CGPoint(x: 242, y: 300)
            image12.frame.origin = CGPoint(x: 242, y: 404)
        }else if randomNumber == 5 {
            image6.frame.origin = CGPoint(x: 16, y: 36)
            image7.frame.origin = CGPoint(x: 74, y: 36)
            image8.frame.origin = CGPoint(x: 132, y: 36)
            image1.frame.origin = CGPoint(x: 190, y: 36)
            image2.frame.origin = CGPoint(x: 248, y: 36)
            image3.frame.origin = CGPoint(x: 306, y: 36)
            image4.frame.origin = CGPoint(x: 16, y: 94)
            image5.frame.origin = CGPoint(x: 74, y: 94)
            image14.frame.origin = CGPoint(x: 51, y: 196)
            image15.frame.origin = CGPoint(x: 51, y: 300)
            image16.frame.origin = CGPoint(x: 51, y: 404)
            image9.frame.origin = CGPoint(x: 147, y: 239)
            image10.frame.origin = CGPoint(x: 147, y: 352)
            image11.frame.origin = CGPoint(x: 242, y: 196)
            image12.frame.origin = CGPoint(x: 242, y: 300)
            image13.frame.origin = CGPoint(x: 242, y: 404)
        }else if randomNumber == 6 {
            image7.frame.origin = CGPoint(x: 16, y: 36)
            image8.frame.origin = CGPoint(x: 74, y: 36)
            image1.frame.origin = CGPoint(x: 132, y: 36)
            image2.frame.origin = CGPoint(x: 190, y: 36)
            image3.frame.origin = CGPoint(x: 248, y: 36)
            image4.frame.origin = CGPoint(x: 306, y: 36)
            image5.frame.origin = CGPoint(x: 16, y: 94)
            image6.frame.origin = CGPoint(x: 74, y: 94)
            image15.frame.origin = CGPoint(x: 51, y: 196)
            image16.frame.origin = CGPoint(x: 51, y: 300)
            image9.frame.origin = CGPoint(x: 51, y: 404)
            image10.frame.origin = CGPoint(x: 147, y: 239)
            image11.frame.origin = CGPoint(x: 147, y: 352)
            image12.frame.origin = CGPoint(x: 242, y: 196)
            image13.frame.origin = CGPoint(x: 242, y: 300)
            image14.frame.origin = CGPoint(x: 242, y: 404)
        }else if randomNumber == 7 {
            image8.frame.origin = CGPoint(x: 16, y: 36)
            image1.frame.origin = CGPoint(x: 74, y: 36)
            image2.frame.origin = CGPoint(x: 132, y: 36)
            image3.frame.origin = CGPoint(x: 190, y: 36)
            image4.frame.origin = CGPoint(x: 248, y: 36)
            image5.frame.origin = CGPoint(x: 306, y: 36)
            image6.frame.origin = CGPoint(x: 16, y: 94)
            image7.frame.origin = CGPoint(x: 74, y: 94)
            image16.frame.origin = CGPoint(x: 51, y: 196)
            image9.frame.origin = CGPoint(x: 51, y: 300)
            image10.frame.origin = CGPoint(x: 51, y: 404)
            image11.frame.origin = CGPoint(x: 147, y: 239)
            image12.frame.origin = CGPoint(x: 147, y: 352)
            image13.frame.origin = CGPoint(x: 242, y: 196)
            image14.frame.origin = CGPoint(x: 242, y: 300)
            image15.frame.origin = CGPoint(x: 242, y: 404)
        }
        
        
    }
    
    func move(_ sender: UIPanGestureRecognizer) {
        if imageIsMoved == false {
            
                tip1.frame.origin.x += sender.translation(in: tip1).x
                tip1.frame.origin.y += sender.translation(in: tip1).y
                sender.setTranslation(CGPoint(x: 0, y: 0), in: tip1)
                
                if sender.state == .began {
                   
                    tip1.frame.size.width += 30
                    tip1.frame.size.height += 30
                    view.bringSubview(toFront: tip1)
                    tip1.frame.origin.y -= 50
                }
                if sender.state == .ended {
                    if tip1.frame.origin.x >= tip9.frame.origin.x - 10 && tip1.frame.origin.y >= tip9.frame.origin.y - 10 && tip1.frame.origin.x <= tip9.frame.origin.x + tip9.frame.size.width + 10 && tip1.frame.origin.y <= tip9.frame.origin.y + tip9.frame.size.height + 10 {
                        
            
                            tip1.frame.origin.x = tip9.frame.origin.x
                            tip1.frame.origin.y = tip9.frame.origin.y
                            imageIsMoved = true
                            affectedCounter = affectedCounter + 1
                            labelOfAffectedImages.text = String(affectedCounter)
                            affectedMissedCounter()
                            tip17.isHidden = false
                            view.bringSubview(toFront: tip17)
                            showYes()
                            
                            

                    
                        
                        }else {
                            tip1.frame = CGRect(x: 16, y: 513, width: 50, height: 50)
                            imageIsMoved = true
                            missedCounter = missedCounter + 1
                            labelOfMissedImages.text = String(missedCounter)
                            affectedMissedCounter()
                            tip18.isHidden = false
                            view.bringSubview(toFront: tip18)
                            showWrong()
                        }
                    }
                }
        }
    func move2(_ sender: UIPanGestureRecognizer) {
        if imageIsMoved2 == false {
            
                tip2.frame.origin.x += sender.translation(in: tip2).x
                tip2.frame.origin.y += sender.translation(in: tip2).y
                sender.setTranslation(CGPoint(x: 0, y: 0), in: tip2)
                
                if sender.state == .began {
                   
                    tip2.frame.size.width += 30
                    tip2.frame.size.height += 30
                    tip2.frame.origin.y -= 50
                    view.bringSubview(toFront: tip2)
                }
                if sender.state == .ended {
                    if tip2.frame.origin.x >= tip10.frame.origin.x - 10 && tip2.frame.origin.y >= tip10.frame.origin.y - 10 && tip2.frame.origin.x <= tip10.frame.origin.x + tip10.frame.size.width + 10 && tip2.frame.origin.y <= tip10.frame.origin.y + tip10.frame.size.height + 10 {
                       
                        
                        tip2.frame.origin.x = tip10.frame.origin.x
                        tip2.frame.origin.y = tip10.frame.origin.y
                        imageIsMoved2 = true
                        affectedCounter = affectedCounter + 1
                        labelOfAffectedImages.text = String(affectedCounter)
                        affectedMissedCounter()
                        tip17.isHidden = false
                        view.bringSubview(toFront: tip17)
                        showYes()

                        
                    }else {
                        tip2.frame = CGRect(x: 16, y: 513, width: 50, height: 50)
                        imageIsMoved2 = true
                        missedCounter = missedCounter + 1
                        labelOfMissedImages.text = String(missedCounter)
                        affectedMissedCounter()
                        tip18.isHidden = false
                        view.bringSubview(toFront: tip18)
                        showWrong()
                    }
            }
    }
}
    func move3(_ sender: UIPanGestureRecognizer) {
        if imageIsMoved3 == false {
            tip3.frame.origin.x += sender.translation(in: tip3).x
            tip3.frame.origin.y += sender.translation(in: tip3).y
            sender.setTranslation(CGPoint(x: 0, y: 0), in: tip3)
            
            if sender.state == .began {
                tip3.frame.size.width += 30
                tip3.frame.size.height += 30
                tip3.frame.origin.y -= 50
                view.bringSubview(toFront: tip3)
            }
            if sender.state == .ended {
                if tip3.frame.origin.x >= tip11.frame.origin.x - 10 && tip3.frame.origin.y >= tip11.frame.origin.y - 10 && tip3.frame.origin.x <= tip11.frame.origin.x + tip11.frame.size.width + 10 && tip3.frame.origin.y <= tip11.frame.origin.y + tip11.frame.size.height + 10 {
                    
                    tip3.frame.origin.x = tip11.frame.origin.x
                    tip3.frame.origin.y = tip11.frame.origin.y
                    imageIsMoved3 = true
                    affectedCounter = affectedCounter + 1
                    labelOfAffectedImages.text = String(affectedCounter)
                    affectedMissedCounter()
                    tip17.isHidden = false
                    view.bringSubview(toFront: tip17)
                    showYes()

                    
                } else {
                    tip3.frame = CGRect(x: 16, y: 513, width: 50, height: 50)
                    imageIsMoved3 = true
                    missedCounter = missedCounter + 1
                    labelOfMissedImages.text = String(missedCounter)
                    affectedMissedCounter()
                    tip18.isHidden = false
                    view.bringSubview(toFront: tip18)
                    showWrong()

                }
            }
        }
        
    }
    func move4(_ sender: UIPanGestureRecognizer) {
        if imageIsMoved4 == false {
            tip4.frame.origin.x += sender.translation(in: tip4).x
            tip4.frame.origin.y += sender.translation(in: tip4).y
            sender.setTranslation(CGPoint(x: 0, y: 0), in: tip4)
            
            if sender.state == .began {
                tip4.frame.size.width += 30
                tip4.frame.size.height += 30
                tip4.frame.origin.y -= 50
                view.bringSubview(toFront: tip4)
            }
            if sender.state == .ended {
                if tip4.frame.origin.x >= tip12.frame.origin.x - 10 && tip4.frame.origin.y - 10 >= tip12.frame.origin.y && tip4.frame.origin.x <= tip12.frame.origin.x + tip12.frame.size.width + 10 && tip4.frame.origin.y <= tip12.frame.origin.y + tip12.frame.size.height + 10 {
                    
                    tip4.frame.origin.x = tip12.frame.origin.x
                    tip4.frame.origin.y = tip12.frame.origin.y
                    imageIsMoved4 = true
                    affectedCounter = affectedCounter + 1
                    labelOfAffectedImages.text = String(affectedCounter)
                    affectedMissedCounter()
                    tip17.isHidden = false
                    view.bringSubview(toFront: tip17)
                    showYes()

                } else {
                    tip4.frame = CGRect(x: 16, y: 513, width: 50, height: 50)
                    imageIsMoved4 = true
                    missedCounter = missedCounter + 1
                    labelOfMissedImages.text = String(missedCounter)
                    affectedMissedCounter()
                    tip18.isHidden = false
                    view.bringSubview(toFront: tip18)
                    showWrong()
 
                }
            }
        }
        
    }
    
    func move5(_ sender: UIPanGestureRecognizer) {
        if imageIsMoved5 == false {
            tip5.frame.origin.x += sender.translation(in: tip5).x
            tip5.frame.origin.y += sender.translation(in: tip5).y
            sender.setTranslation(CGPoint(x: 0, y: 0), in: tip5)
            
            if sender.state == .began {
                tip5.frame.size.width += 30
                tip5.frame.size.height += 30
                tip5.frame.origin.y -= 50
                view.bringSubview(toFront: tip5)
            }
            
            if sender.state == .ended {
                
              if  tip5.frame.origin.x >= tip13.frame.origin.x - 10 && tip5.frame.origin.y >= tip13.frame.origin.y - 10 && tip5.frame.origin.x <= tip13.frame.origin.x + tip13.frame.size.width + 10 && tip5.frame.origin.y <= tip13.frame.origin.y + tip13.frame.size.height + 10 {
                
                    tip5.frame.origin.x = tip13.frame.origin.x
                    tip5.frame.origin.y = tip13.frame.origin.y
                    imageIsMoved5 = true
                    affectedCounter = affectedCounter + 1
                    labelOfAffectedImages.text = String(affectedCounter)
                    affectedMissedCounter()
                    tip17.isHidden = false
                    view.bringSubview(toFront: tip17)
                    showYes()

                } else {
                tip5.frame = CGRect(x: 16, y: 513, width: 50, height: 50)
                imageIsMoved5 = true
                missedCounter = missedCounter + 1
                labelOfMissedImages.text = String(missedCounter)
                affectedMissedCounter()
                tip18.isHidden = false
                view.bringSubview(toFront: tip18)
                showWrong()

                }
                
            }
        }
        
    }
    func move6(_ sender: UIPanGestureRecognizer) {
        if imageIsMoved6 == false {
            
            tip6.frame.origin.x += sender.translation(in: tip6).x
            tip6.frame.origin.y += sender.translation(in: tip6).y
            sender.setTranslation(CGPoint(x: 0, y: 0), in: tip6)
            
            if sender.state == .began {
                tip6.frame.size.width += 30
                tip6.frame.size.height += 30
                tip6.frame.origin.y -= 50
                view.bringSubview(toFront: tip6)
            }
            
            if sender.state == .ended {
                if tip6.frame.origin.x >= tip14.frame.origin.x - 10 && tip6.frame.origin.y >= tip14.frame.origin.y - 10 && tip6.frame.origin.x <= tip14.frame.origin.x + tip14.frame.size.width + 10 && tip6.frame.origin.y <= tip14.frame.origin.y + tip14.frame.size.height + 10 {
                    
                    tip6.frame.origin.x = tip14.frame.origin.x
                    tip6.frame.origin.y = tip14.frame.origin.y
                    imageIsMoved6 = true
                    affectedCounter = affectedCounter + 1
                    labelOfAffectedImages.text = String(affectedCounter)
                    affectedMissedCounter()
                    tip17.isHidden = false
                    view.bringSubview(toFront: tip17)
                    showYes()

                } else {
                    tip6.frame = CGRect(x: 16, y: 513, width: 50, height: 50)
                    imageIsMoved6 = true
                    missedCounter = missedCounter + 1
                    labelOfMissedImages.text = String(missedCounter)
                    affectedMissedCounter()
                    tip18.isHidden = false
                    view.bringSubview(toFront: tip18)
                    showWrong()

                }
            }
        }
    }
    
    func move7(_ sender: UIPanGestureRecognizer) {
        if imageIsMoved7 == false {
            
            tip7.frame.origin.x += sender.translation(in: tip7).x
            tip7.frame.origin.y += sender.translation(in: tip7).y
            sender.setTranslation(CGPoint(x: 0, y: 0), in: tip7)
            
            if sender.state == .began {
                tip7.frame.size.width += 30
                tip7.frame.size.height += 30
                tip7.frame.origin.y -= 50
                view.bringSubview(toFront: tip7)
            }
            if sender.state == .ended {
                if tip7.frame.origin.x >= tip15.frame.origin.x - 10 && tip7.frame.origin.y >= tip15.frame.origin.y - 10 && tip7.frame.origin.x <= tip15.frame.origin.x + tip15.frame.size.width + 10 && tip7.frame.origin.y <= tip15.frame.origin.y + tip15.frame.size.height + 10 {
                    
                    tip7.frame.origin.x = tip15.frame.origin.x
                    tip7.frame.origin.y = tip15.frame.origin.y
                    imageIsMoved7 = true
                    affectedCounter = affectedCounter + 1
                    labelOfAffectedImages.text = String(affectedCounter)
                    affectedMissedCounter()
                    tip17.isHidden = false
                    view.bringSubview(toFront: tip17)
                    showYes()
                } else {
                    tip7.frame = CGRect(x: 16, y: 513, width: 50, height: 50)
                    imageIsMoved7 = true
                    missedCounter = missedCounter + 1
                    labelOfMissedImages.text = String(missedCounter)
                    affectedMissedCounter()
                    tip18.isHidden = false
                    view.bringSubview(toFront: tip18)
                    showWrong()

                }
            }
        }
    }
    func move8(_ sender: UIPanGestureRecognizer) {
        if imageIsMoved8 == false {
            tip8.frame.origin.x += sender.translation(in: tip8).x
            tip8.frame.origin.y += sender.translation(in: tip8).y
            sender.setTranslation(CGPoint(x: 0, y: 0), in: tip8)
            
            if sender.state == .began {
                tip8.frame.size.width += 30
                tip8.frame.size.height += 30
                tip8.frame.origin.y -= 50
                view.bringSubview(toFront: tip8)
            }
            
            if sender.state == .ended {
                if tip8.frame.origin.x >= tip16.frame.origin.x - 10 && tip8.frame.origin.y >= tip16.frame.origin.y - 10 && tip8.frame.origin.x <= tip16.frame.origin.x + tip16.frame.size.width + 10 && tip8.frame.origin.y <= tip16.frame.origin.y + tip16.frame.size.height + 10 {
                    
                    tip8.frame.origin.x = tip16.frame.origin.x
                    tip8.frame.origin.y = tip16.frame.origin.y
                    imageIsMoved8 = true
                    affectedCounter = affectedCounter + 1
                    labelOfAffectedImages.text = String(affectedCounter)
                    affectedMissedCounter()
                    tip17.isHidden = false
                    view.bringSubview(toFront: tip17)
                    showYes()

                } else {
                    tip8.frame = CGRect(x: 16, y: 513, width: 50, height: 50)
                    imageIsMoved8 = true
                    missedCounter = missedCounter + 1
                    labelOfMissedImages.text = String(missedCounter)
                    affectedMissedCounter()
                    tip18.isHidden = false
                    view.bringSubview(toFront: tip18)
                    showWrong()
                }
            }
            
        }
    }
    
    func affectedMissedCounter() {
       
        if (affectedCounter + missedCounter) == 8 {
            if affectedCounter == 0 {
                let alert = UIAlertController(title: "Number of affected images is 0", message: "Catastrophe!!!", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
        }
          else  if affectedCounter == 1 {
                let alert = UIAlertController(title: "Number of affected images is 1", message: "Awfull!!!", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
          else  if affectedCounter == 2 {
                let alert = UIAlertController(title: "Number of affected images is 2", message: "Awfull,practise again!!!", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
          else  if affectedCounter == 3 {
                let alert = UIAlertController(title: "Number of affected images is 3", message: "This is not good!!!", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
           else if affectedCounter == 4 {
            let alert = UIAlertController(title: "Number of affected images is 4", message: "This is weak", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            }
            else if affectedCounter == 5 {
        let alert = UIAlertController(title: "Number of affected images is 5", message: "this is just OK", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
            }
            else if affectedCounter == 6 {
                let alert = UIAlertController(title: "Number of affected images is 6", message: "You can do it better", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
            else if affectedCounter == 7 {
                let alert = UIAlertController(title: "Number of affected images is 7", message: "You are good", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
            else if affectedCounter == 8 {
                let alert = UIAlertController(title: "Number of affected images is 8", message: "Excellent!!!", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
       }
  
}
    
    
    
    
}



