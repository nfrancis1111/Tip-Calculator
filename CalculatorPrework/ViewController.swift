//
//  ViewController.swift
//  CalculatorPrework
//
//  Created by Nyasha Francis on 1/19/22.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var numberOfPeopleTxtField: UITextField!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var perPersonLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        // get bill amount from the text field
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // get number of people from field
        let numPeople = Double(numberOfPeopleTxtField.text!) ?? 0
               
        // get total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // calculate how much each person will be paying after tip
        let perPerson = total / numPeople
        
        //update tip amount label
        tipAmountLabel.text = String(format: "$%.2f",tip)
        
        //update total amount
        totalLabel.text = String(format: "$%.2f",total)
        
        // update per person label
        perPersonLabel.text = String(format: "$%.2f",perPerson)
    }
    
    
}

