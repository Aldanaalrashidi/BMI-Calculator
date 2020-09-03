//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Aldana Al Rashidi on 9/3/20.
//  Copyright © 2020 Aldana Al Rashidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightField: UITextField!
    @IBOutlet weak var weightField: UITextField!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var calculateBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateBtn.layer.cornerRadius = 30
        // Do any additional setup after loading the view.
    }
    
    @IBAction func isTapped(_ sender: Any) {
        calculateBmiAndUpdateView()
    }
    
    func calculateBmi(weight: Double, height: Double) -> Double{
          return weight / (height*height)
      }
      
      func bmiStatus(bmi: Double) -> String {
          if bmi < 20{
              return "ضعيف"
          }else if bmi < 25{
              return "جيد"
          }else if bmi > 25{
              return "سمين"
          }else{
            return "خطأ"
        }
      }
    
    func calculateBmiAndUpdateView(){
        let weight = Double(weightField.text!)
        let height = Double(heightField.text!)
        let bmi = calculateBmi(weight: weight ?? 0.0, height: height ?? 0.0)
        let bmiStatus = self.bmiStatus(bmi: bmi)
        self.bmiLabel.text = String(format: "%.1f", bmi)
        self.statusLabel.text = bmiStatus
    }
}
