//
//  ViewController.swift
//  MidTermTest
//
//  Created by Vivek Mohanan on 2019-11-06.
//  Copyright © 2019 com.vivekmohanan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   let Label1 = UILabel.init()
    
    var textprint:NSString = "Hello \n my name \n is swift"
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        Label1.frame = CGRect(x: 50, y: 150, width: 200, height:200)
        Label1.textColor = UIColor.black
        Label1.numberOfLines = 5
//        Label1.text = "Hello"
        Label1.text = "\(textprint)"
        Label1.textAlignment = .center
        self.view.addSubview(Label1)
        
        var myMutableString = NSMutableAttributedString()
        
        myMutableString = NSMutableAttributedString(string: textprint as String, attributes: [NSAttributedString.Key.font:UIFont(name: "Georgia", size: 18.0)!])
        
        
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.black, range: NSRange(location:2,length:2))

        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.blue, range: NSRange(location:6,length:12))
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.green, range: NSRange(location:15,length:11))
        
       Label1.attributedText = myMutableString
        
    
        
    }
        // Do any additional setup after loading the view.
   
    


}


