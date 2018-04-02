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
    @IBOutlet weak var calculateOutlet: UIButton!
    
    let valueBigBox = 93.15
    let valueSmallBox = 16.32
    let valueHghBox = 389.424
    
    
    let typeBBox = 21398.75
    let typeLBox = 19440.0
    let typeVBox = 13323.75
    let typeMBox = 9000.0
    let typeDBox = 3630.0
    let typeEBox = 2227.5
    let typeGBox = 2100.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberOfBoxLabel.layer.cornerRadius = numberOfBoxLabel.frame.size.height / 2
        numberOfBoxLabel.clipsToBounds = true
        numberOfBoxLabel.text = "Собирай заказ!"
        
        calculateOutlet.layer.cornerRadius = calculateOutlet.frame.size.height / 2
        calculateOutlet.clipsToBounds = true
    }

    @IBAction func calculateButton(_ sender: UIButton) {
        if Double(hghTextField.text!) != nil && Double(bigBoxTextField.text!) != nil && Double(smallBoxTextField.text!) != nil {
            
            let hghBoxes = Double(hghTextField.text!)! * valueHghBox
            let bigBoxes = Double(bigBoxTextField.text!)! * valueBigBox
            let smallBoxes = Double(smallBoxTextField.text!)! * valueSmallBox
            
            let sumValueOfBoxes = (hghBoxes + bigBoxes + smallBoxes) * 1.2
            
            if sumValueOfBoxes < typeGBox {
                numberOfBoxLabel.text = "Коробка Ж"
            } else if sumValueOfBoxes > typeGBox && sumValueOfBoxes < typeEBox {
                numberOfBoxLabel.text = "Коробка Е"
            } else if sumValueOfBoxes > typeEBox && sumValueOfBoxes < typeDBox {
                numberOfBoxLabel.text = "Коробка Д"
            } else if sumValueOfBoxes > typeDBox && sumValueOfBoxes < typeMBox {
                numberOfBoxLabel.text = "Коробка M"
            } else if sumValueOfBoxes > typeMBox && sumValueOfBoxes < typeVBox {
                numberOfBoxLabel.text = "Коробка В"
            } else if sumValueOfBoxes > typeVBox && sumValueOfBoxes < typeLBox {
                numberOfBoxLabel.text = "Коробка Л"
            } else if sumValueOfBoxes > typeLBox && sumValueOfBoxes < typeBBox {
                numberOfBoxLabel.text = "Коробка Б"
            } else if sumValueOfBoxes > typeLBox {
                numberOfBoxLabel.text = "Нет таких коробок"
            }
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
}

