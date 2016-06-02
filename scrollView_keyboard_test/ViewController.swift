//
//  ViewController.swift
//  scrollView_keyboard_test
//
//  Created by Vijay Weemhoff on 02-06-16.
//  Copyright © 2016 Vijay Weemhoff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    let numberOfButtons = 36
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupKeyboard()
        
    }
    
    func setupKeyboard()
    {
        for index in 0..<self.numberOfButtons {
            var buttonHeight=0
            var buttonWidth=0
            var buttonX=0
            var plusIndexBlack=0
            var minIndexWhite=0
            
            if(index>=12&&index<24)
            {
                plusIndexBlack=420
                minIndexWhite=300
            }

            if(index>=24)
            {
                plusIndexBlack=840
                minIndexWhite=600
            }
            
            switch(index%12){
            case 0:
                buttonX = (index * 60)-minIndexWhite
                buttonHeight=191
                buttonWidth=60
            case 1:
                buttonX = (index * 60)-minIndexWhite
                buttonHeight=191
                buttonWidth=60
            case 2:
                buttonX = (index * 60)-minIndexWhite
                buttonHeight=191
                buttonWidth=60
            case 3:
                buttonX = (index * 60)-minIndexWhite
                buttonHeight = 191
                buttonWidth=60
            case 4:
                buttonX = (index * 60)-minIndexWhite
                buttonHeight=191
                buttonWidth=60
            case 5:
                buttonX = (index * 60)-minIndexWhite
                buttonHeight=191
                buttonWidth=60
            case 6:
                buttonX = (index * 60)-minIndexWhite
                buttonHeight = 191
                buttonWidth=60
            case 7:
                buttonX = 40 + plusIndexBlack
                buttonHeight = 126
                buttonWidth=40
            case 8:
                buttonX = 100 + plusIndexBlack
                buttonHeight = 126
                buttonWidth=40
            case 9:
                buttonX = 220 + plusIndexBlack
                buttonHeight=126
                buttonWidth=40
            case 10:
                buttonX = 280 + plusIndexBlack
                buttonHeight = 126
                buttonWidth=40
            case 11:
                buttonX = 340 + plusIndexBlack
                buttonHeight=126
                buttonWidth=40
            default: break
            }
            let frame1 = CGRect(x: 0  +  buttonX, y: 0, width: buttonWidth, height: buttonHeight)
            let button = UIButton(frame: frame1)
            button.setTitle("", forState: .Normal)
            
            switch(index%12){
            case 0:
                button.backgroundColor = UIColor.whiteColor()
            case 1:
                button.backgroundColor = UIColor.whiteColor()
            case 2:
                button.backgroundColor = UIColor.whiteColor()
            case 3:
                button.backgroundColor = UIColor.whiteColor()
            case 4:
                button.backgroundColor = UIColor.whiteColor()
            case 5:
                button.backgroundColor = UIColor.whiteColor()
            case 6:
                button.backgroundColor = UIColor.whiteColor()
            case 7:
                button.backgroundColor = UIColor.blackColor()
            case 8:
                button.backgroundColor = UIColor.blackColor()
            case 9:
                button.backgroundColor = UIColor.blackColor()
            case 10:
                button.backgroundColor = UIColor.blackColor()
            case 11:
                button.backgroundColor = UIColor.blackColor()
            default: break
            }
            button.layer.cornerRadius = 2
            button.layer.borderWidth=1
            button.layer.borderColor = UIColor.blackColor().CGColor
            button.addTarget(self, action: #selector(buttonAction), forControlEvents: UIControlEvents.TouchUpInside)
            button.tag = index
            
            self.scrollView.addSubview(button)
            
        }
        //set width off scrollView
        self.scrollView.contentSize.width = CGFloat(1446)
    }
    
    
    func buttonAction(sender:UIButton!)
    {
        let buttonTag:UIButton = sender
        var key="C"
        switch(buttonTag.tag%12) {
        case 0:
            key="C"
        case 1:
            key="D"
        case 2:
            key="E"
        case 3:
            key="F"
        case 4:
            key="G"
        case 5:
            key="A"
        case 6:
            key="B"
        case 7:
            key="C#"
        case 8:
            key="D#"
        case 9:
            key="F#"
        case 10:
            key="G#"
        case 11:
            key="A#"
        default: break
        }
        NSLog("key: %@",key)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

