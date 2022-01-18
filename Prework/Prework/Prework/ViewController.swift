//
//  ViewController.swift
//  Prework
//
//  Created by Steven Guo on 1/13/22.
//

import UIKit

class ViewController: UIViewController {
    
    // Text Mutable Object
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var LDMode: UISwitch!
    
    // Text Immutable Object
    @IBOutlet weak var billAmountTextLabel: UILabel!
    @IBOutlet weak var tipAmountTextLabel: UILabel!
    @IBOutlet weak var totalTextLabel: UILabel!
    
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Sets the title in the Navigation Bar
        self.title = "Easy Tips"
    }

    override func viewWillAppear(_ animated: Bool) {
        billAmountTextField.text = String(format: "$%","")
        
        // Set Customized Tip Percentages
        tipControl.setTitle(defaults.string(forKey:"Tip1")! + "%", forSegmentAt: 0)
        tipControl.setTitle(defaults.string(forKey:"Tip2")! + "%", forSegmentAt: 1)
        tipControl.setTitle(defaults.string(forKey:"Tip3")! + "%", forSegmentAt: 2)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        var billString: String = billAmountTextField.text!
        billString.removeFirst()
        
        let bill = Double(billString) ?? 0
        
        // Get Tip amount from title input
        let tipNum1 = defaults.double(forKey:"Tip1")
        let tipNum2 = defaults.double(forKey:"Tip2")
        let tipNum3 = defaults.double(forKey:"Tip3")
        let tipPercentage = [tipNum1, tipNum2, tipNum3]
        
        // Get Total tip by multiplying tip * tipPercentage
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]/100
        let total = bill + tip
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func switchMode(_ sender: Any) {
        if LDMode.isOn {
            self.view.backgroundColor = UIColor.black
        }
        else{
            self.view.backgroundColor = UIColor.white
            billAmountTextField.backgroundColor = UIColor.white
            billAmountTextLabel.backgroundColor = UIColor.white
            tipAmountLabel.backgroundColor = UIColor.white
            tipAmountTextLabel.backgroundColor = UIColor.white
            tipControl.backgroundColor = UIColor.white
            totalLabel.backgroundColor = UIColor.white
            totalTextLabel.backgroundColor = UIColor.white
        }
    }
}
