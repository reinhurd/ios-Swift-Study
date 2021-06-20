//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Mikhail Bozhenov on 19.06.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var ratioTextField: UITextField!
    
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var toggleCurrency: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "";
    }

    @IBAction func exchangeButton(_ sender: Any) {
        let ratio = Double(ratioTextField.text!)!;
        let input = Double(inputTextField.text!)!;
        
        let result = input * ratio;
        
        let currencyText = toggleCurrency.selectedSegmentIndex == 0 ? "BTC" :
        "ETH";
        
        resultLabel.text = "\(currencyText) \(result)";
    }
    
    
}

