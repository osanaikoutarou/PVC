//
//  ViewController.swift
//  PVC
//
//  Created by osanai on 2018/10/23.
//  Copyright © 2018年 osanai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var number:Int = 0
    @IBOutlet weak var label1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label1.text = "\(number)"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

