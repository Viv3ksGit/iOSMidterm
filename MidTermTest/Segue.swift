//
//  Segue.swift
//  MidTermTest
//
//  Created by Vivek Mohanan on 2019-11-06.
//  Copyright © 2019 com.vivekmohanan. All rights reserved.
//

import UIKit

class Segue: UIViewController {

    @IBOutlet weak var Green: UIView!
    @IBOutlet weak var Red: UIView!
    @IBOutlet weak var Purple: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion:nil)
    }
    
    @IBAction func Slider(_ sender: UISlider) {
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
