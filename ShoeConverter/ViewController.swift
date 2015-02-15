//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Nic Yeeles on 15/02/2015.
//  Copyright (c) 2015 Nic Yeeles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextfield: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressesd(sender: UIButton) {
        
        let sizeFromTextField = mensShoeSizeTextfield.text.toInt()!
        
        let conversionConstant = 30
        mensConvertedShoeSizeLabel.hidden = false
        
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European shoe size"
        mensShoeSizeTextfield.resignFirstResponder()
    }

}

