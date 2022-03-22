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
    
    var workingSection = "9 + 8"
    
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
    
    @IBAction func percentTapped(_ sender: Any) {
        
    }
    
    @IBAction func divideTapped(_ sender: Any) {
        
    }
    
    @IBAction func multiplyTapped(_ sender: Any) {
        
    }
    
    @IBAction func minusTapped(_ sender: Any) {
        
    }
    
    @IBAction func plusTapped(_ sender: Any) {
        
    }
    
    @IBAction func euqalTapped(_ sender: Any) {
        
    }
    
    //MARK: Number's IBAction
    @IBAction func numberTapped(_ sender: Any) {
        
    }
}

