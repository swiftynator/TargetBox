//
//  ViewController.swift
//  TargetBox
//
//  Created by Свиридков Евгений on 01.04.2018.
//  Copyright © 2018 T-sterone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hghTextField: UITextField!
    @IBOutlet weak var bigBoxTextField: UITextField!
    @IBOutlet weak var smallBoxTextField: UITextField!
    
    @IBOutlet weak var numberOfBoxLabel: UILabel!
    
    let valueBigBox = 93.15
    let valueSmallBox = 16.32
    let valueHghBox = 389.424
    
    let typeLBox = 19440.0
    let typeMBox = 9000.0
    let typeBBox = 21398.75
    let typeVBox = 13323.75
    let typeDBox = 3630.0
    let typeEBox = 2227.5
    let typeGBox = 2100.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateButton(_ sender: UIButton) {
    }
    
}

