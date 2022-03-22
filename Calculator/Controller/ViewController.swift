//
//  ViewController.swift
//  Calculator
//
//  Created by Hua Son Tung on 21/03/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var calculatorWorking: UILabel!
    @IBOutlet weak var calculatorResult: UILabel!
    
    var workingSection = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //clearAll()
    }
    
    func clearAll() {
        workingSection = ""
        calculatorWorking.text = ""
        calculatorResult.text = ""
    }
    
    //MARK: Operator's IBAction
    @IBAction func allClearTapped(_ sender: Any) {
        clearAll()
    }
    
    
    @IBAction func backSpaceTapped(_ sender: Any) {
        if workingSection != "" {
            workingSection.removeLast()
            calculatorWorking.text = workingSection
        }
    }
    
    @IBAction func operatorTapped(_ sender: UIButton) {
        let inputOperator = sender.titleLabel?.text
        workingSection = workingSection + inputOperator!
        calculatorWorking.text = workingSection
    }
    
    @IBAction func euqalTapped(_ sender: Any) {
        
        if validInput() {
            let checkedWorkingForPercent = workingSection.replacingOccurrences(of: "%", with: "*0.01")
            let expression = NSExpression(format: checkedWorkingForPercent)
            let result = expression.expressionValue(with: nil, context: nil) as! Double
            let resultString = formatResult(result: result)
            calculatorResult.text = resultString
        } else {
            let alert = UIAlertController(title: "Invalid Input", message: "Syntax Error", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func validInput() -> Bool {
        
        var count = 0
        var funcCharIndexes = [Int]()
        
        for char in workingSection {
            if isSpecialCharacter(char: char) {
                funcCharIndexes.append(count)
            }
            count += 1
        }
        
        if workingSection.isEmpty {
            return false
        }
        
        var previousChar: Int = -1
        
        for index in funcCharIndexes {
            if index == 0 {
                return false
            }
            
            if index == workingSection.count - 1 {
                return false
            }
            
            if previousChar != -1 {
                
                if index - previousChar == 1 {
                    return false
                }
            }
            previousChar = index
            
        }
        
        return true
    }
    
    func isSpecialCharacter(char: Character) -> Bool {
        if (char == "/" || char == "*" || char == "-" || char == "+" || char == ".") {
            return true
        }
        
        return false
    }
    
    func formatResult(result: Double) -> String {
            return String(format: "%.2f", result)
    }
    
    //MARK: Number's IBAction
    @IBAction func numberTapped(_ sender: UIButton) {
        let temp = (sender.titleLabel?.text)!
        workingSection = workingSection + temp
        calculatorWorking.text = workingSection
    }
}

