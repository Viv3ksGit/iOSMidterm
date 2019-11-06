//
//  ViewController.swift
//  MidTermTest
//
//  Created by Vivek Mohanan on 2019-11-06.
//  Copyright © 2019 com.vivekmohanan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
   let Label1 = UILabel.init() // question 1
    let Label2 = UILabel.init()
    let Label3 = UILabel.init()
    let Label4 = UILabel.init()
    
    @IBOutlet weak var result_label: UILabel!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image1: UIImageView!
    var textprint:NSString = "Hello \n my name \n is swift \n from  \n iOs"
    
    
    @IBOutlet weak var picker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Label1.frame = CGRect(x: 50, y: 100, width: 200, height:200)  //question 1 - changed height to 200
        Label1.textColor = UIColor.black
        Label1.numberOfLines = 5
//        Label1.text = "Hello"
        Label1.text = "\(textprint)"
        Label1.textAlignment = .center
        self.view.addSubview(Label1)
        
        let imageapple = image1.image //question 6
        let imageandroid = image2.image
        let data11:NSData = imageapple!.pngData()! as NSData
        let data12:NSData = imageandroid!.pngData()! as NSData
        if(data11.isEqual(data12)){
            
            result_label.text = "The images are equal"
        }
        else{
            result_label.text = "The images are unequal"
        }
        
        
        

        
        
    
        
        var myMutableString = NSMutableAttributedString()
        
        myMutableString = NSMutableAttributedString(string: textprint as String, attributes: [NSAttributedString.Key.font:UIFont(name: "Georgia", size: 18.0)!])
        
        
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.black, range: NSRange(location:2,length:2))

        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.blue, range: NSRange(location:6,length:12)) // question 2
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.green, range: NSRange(location:15,length:11)) // question 2
        
       Label1.attributedText = myMutableString
        
        
        picker.datePickerMode = UIDatePicker.Mode.dateAndTime; //question 5
        picker.minimumDate = Calendar.current.date(byAdding: .year, value: -2, to: Date());
        picker.maximumDate = Calendar.current.date(byAdding: .year, value: 2, to: Date())
    
        Label3.text = "message in from Swift" // question 3
       
        Label3.frame = CGRect(x: 50, y: 250, width: 200, height:200)  //question 1 - changed height to 200
        Label3.lineBreakMode = .byWordWrapping
        Label3.numberOfLines = 0
        Label3.textAlignment = .center
        Label3.textColor = UIColor.black
        Label3.font = Label3.font.withSize(12)
        
        self.view.addSubview(Label3)
        Label3.sizeToFit()
        
        Label2.alpha = 0.3 // question 4
        Label2.layer.opacity = 0.3
        Label2.layer.cornerRadius = 2
        
     

        
    }
        // Do any additional setup after loading the view.
   
    @IBAction func Alert(_ sender: Any) { //question 9
        let alert = UIAlertController(
            title: "Hello",
            message: "Welcome to the world of iOS",
            preferredStyle: UIAlertController.Style.alert
        )
        let defaultAction = UIAlertAction(
            title: "OK",
            style: UIAlertAction.Style.default
        ) { (action) in}
        alert.addAction(defaultAction)
        
        alert.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Hey Buddy"
        }
        present(alert, animated: true, completion: nil)
        
        let utterance = AVSpeechUtterance(string: "Hello Shivali.. ") //question 12
        utterance.voice = AVSpeechSynthesisVoice(language: "en-IE")
        utterance.rate = 0.1
        
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
        
    }
    
    
    
    }



