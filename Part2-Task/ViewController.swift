//
//  ViewController.swift
//  Part2-Task
//
//  Created by IwasakIYuta on 2021/04/16.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private var textField1: UITextField!
    @IBOutlet private var textField2: UITextField!
    @IBOutlet private var selectSegmentedControl: UISegmentedControl!
    @IBOutlet private var totalLabel: UILabel!
    
    
    @IBAction func calcButton(_ sender: Any) {
        let number1 = Int(textField1.text ?? "") ?? 0
        let number2 = Int(textField2.text ?? "") ?? 0
        let result:Int
        switch selectSegmentedControl.selectedSegmentIndex{
        case 0:
            result = number1 + number2
        case 1:
            result = number1 - number2
        case 2:
            result = number1 * number2
        case 3:
            guard number2 != 0 else{
                totalLabel.text = "割る数には０以外を入力してください"
                return
            }
            result = number1 / number2
        default:
            return
        }
        totalLabel.text = String(result)
    }
}


