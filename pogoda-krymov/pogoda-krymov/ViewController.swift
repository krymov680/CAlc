//
//  ViewController.swift
//  calc-krymov
//
//  Created by Krymov on 22.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var operand = ""
    var numberOne = ""
    var numberTwo = ""
    
    @IBOutlet weak var resultLable: UILabel!

    
    @IBAction func inputNumber(_ sender: UIButton) {
        if operand.isEmpty {
            numberOne = numberOne + (sender.titleLabel?.text)!
            resultLable.text = numberOne
        } else {
            numberTwo = numberTwo + (sender.titleLabel?.text)!
            resultLable.text = numberTwo
        }
    }
    
    
    @IBAction func clearAction(_ sender: UIButton) {
        numberOne = ""
        numberTwo = ""
        operand = ""
        resultLable.text = "0"
    }
    
    @IBAction func inputOperand(_ sender: UIButton) {
        var result = 0.0
        
        switch operand {
        case "/":
            result = Double(numberOne)! /
            Double(numberTwo)!
        case"*":
            result = Double (numberOne)! *
            Double (numberTwo)!
        case "-":
            result = Double (numberOne)! -
            Double (numberTwo)!
        case "+":
            result = Double (numberOne)! +
            Double (numberTwo)!
        default:
            break
    }
        if result.truncatingRemainder(dividingBy: 1.0) == 00{
            resultLable.text = String(Int(result))
        } else {
            resultLable.text = String(result)
        }
    
    }


}

