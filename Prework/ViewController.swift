//
//  ViewController.swift
//  Prework
//
//  Created by Gabby Santiago on 8/22/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func calculateTip(_ sender: Any) {
        //get bill amount from text input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Sets array for percentages to use in calculation
        let tipPercentages = [0.15, 0.18, 0.2]
        
        //calculates tip using the array with the sliding bar as an index
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        //calculates total
        let total = bill + tip
        
        //updates tip and total visually
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

