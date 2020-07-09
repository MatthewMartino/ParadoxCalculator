//
//  ViewController.swift
//  ParadoxCalculator
//
//  Created by Matt Martino on 7/8/20.
//  Copyright © 2020 Matt Martino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultView: UILabel!
    
    var input = 0
    var inputHold = 0
    var answer = 0
    
    var operation = "N/A"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        resultView.text = "ligma"
    }

    //functional buttons
    @IBAction func resetButton(_ sender: Any) {
        input = 0
        resultView.text = String(input)
    }
    
    @IBAction func plusButton(_ sender: Any) {
        resultView.text = String(input) + " +"
        if(inputHold != 0)
        {
            inputHold = (inputHold + input)
            operation = "+"
            input = 0
        }
        else
        {
            inputHold = input
            operation = "+"
            input = 0
        }
    }
    
    @IBAction func minusButton(_ sender: Any) {
        resultView.text = String(input) + " -"
        if(inputHold != 0)
        {
            inputHold = (inputHold - input)
            operation = "-"
            input = 0
        }
        else
        {
            inputHold = input
            operation = "-"
            input = 0
        }
    }
    
    @IBAction func multiplyButton(_ sender: Any) {
        resultView.text = String(input) + " *"
        if(inputHold != 0)
        {
            inputHold = (inputHold * input)
            operation = "*"
            input = 0
        }
        else
        {
            inputHold = input
            operation = "*"
            input = 0
        }
    }
    
    @IBAction func divideButton(_ sender: Any) {
        resultView.text = String(input) + " /"
        if(inputHold != 0)
        {
            inputHold = (inputHold / input)
            operation = "/"
            input = 0
        }
        else
        {
            inputHold = input
            operation = "/"
            input = 0
        }
    }
    
    @IBAction func negateButton(_ sender: Any) {
        input *= -1
        resultView.text = String(input)
    }
    
    @IBAction func percentButton(_ sender: Any) {
        input = (input/100)
        resultView.text = String(input)
    }
    
    //equals button
    @IBAction func equalsButton(_ sender: Any) {
        if(operation == "+")
        {
            answer = input + inputHold
            resultView.text = String(answer)
            input = 0
            inputHold = 0
        }
        else if(operation == "-")
        {
            answer = input - inputHold
            resultView.text = String(answer)
            input = 0
            inputHold = 0
        }
        else if(operation == "*")
        {
            answer = input * inputHold
            resultView.text = String(answer)
            input = 0
            inputHold = 0
        }
        else if(operation == "/")
        {
            answer = input / inputHold
            resultView.text = String(answer)
            input = 0
            inputHold = 0
        }
    }
    
    //number buttons
    @IBAction func zeroButton(_ sender: Any) {
        input *= 10
        resultView.text = String(input)
    }
    
    @IBAction func oneButton(_ sender: Any) {
        input *= 10
        input += 1
        resultView.text = String(input)
    }
    
    @IBAction func twoButton(_ sender: Any) {
        input *= 10
        input += 2
        resultView.text = String(input)
    }
    
    @IBAction func threeButton(_ sender: Any) {
        input *= 10
        input += 3
        resultView.text = String(input)
    }
    
    @IBAction func fourButton(_ sender: Any) {
        input *= 10
        input += 4
        resultView.text = String(input)
    }
    
    @IBAction func fiveButton(_ sender: Any) {
        input *= 10
        input += 5
        resultView.text = String(input)
    }
    
    @IBAction func sixButton(_ sender: Any) {
        input *= 10
        input += 6
        resultView.text = String(input)
    }
    
    @IBAction func sevenButton(_ sender: Any) {
        input *= 10
        input += 7
        resultView.text = String(input)
    }
    
    @IBAction func eightButton(_ sender: Any) {
        input *= 10
        input += 8
        resultView.text = String(input)
    }
    
    @IBAction func nineButton(_ sender: Any) {
        input *= 10
        input += 9
        resultView.text = String(input)
    }
}

