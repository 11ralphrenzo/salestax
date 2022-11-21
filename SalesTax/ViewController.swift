//
//  ViewController.swift
//  SalesTax
//
//  Created by Ralph Renzo Pitogo on 11/20/22.
//

import UIKit

class ViewController: UIViewController {
    var beforeTaxPrice:Float = 0;
    var salesTaxtRate:Float = 0;
    
    @IBOutlet weak var afterTaxPriceTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func BeforeTextChanged(_ sender: UITextField) {
        if let value = Float(sender.text!)
        {
            beforeTaxPrice = value
        }
        else
        {
            beforeTaxPrice = 0;
        }
    }
    
    @IBAction func salesTaxRateChanged(_ sender: UITextField) {
        if let value = Float(sender.text!)
        {
            salesTaxtRate = value
        }
        else
        {
            salesTaxtRate = 0;
        }
    }
    
    @IBAction func calculateButtonPressed(_ sender: Any) {
        
        let salesTax = beforeTaxPrice * salesTaxtRate / 100
        let afterTaxPrice = beforeTaxPrice + salesTax
        
        afterTaxPriceTextField.text = String(afterTaxPrice)
    }
    
}

