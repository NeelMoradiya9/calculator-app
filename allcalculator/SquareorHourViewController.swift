//
//  SquareorHourViewController.swift
//  allcalculator
//
//  Created by Neel  on 09/11/23.
//

import UIKit

class SquareorHourViewController: UIViewController {

    @IBOutlet weak var inputnumberstext: UITextField!
    
    @IBOutlet weak var segmentbar: UISegmentedControl!
    
    @IBOutlet weak var resultlab: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func calculatebutton(_ sender: Any) {
            if let inputText = inputnumberstext.text, let inputNumber = Double(inputText) {
                switch segmentbar.selectedSegmentIndex {
                case 0: // Square Calculation
                    let result = inputNumber * inputNumber
                    resultlab.text = "Square: \(result)"
                case 1: // Hour Calculation
                    let result = inputNumber / 60.0
                    resultlab.text = "Hour: \(result)"
                default:
                    break
                }
            } else {
                resultlab.text = "Invalid input"
            }
        }

    }
