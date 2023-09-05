//
//  ViewController.swift
//  BMI
//
//  Created by Arda Nar on 30.08.2023.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        heightSlider.value = 1.5
        weightSlider.value = 100
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height) m"
        
        
    }
    
    
    @IBAction func weightSlider(_ sender: UISlider) {
        
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight) kg"
        
    }
    
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "toResultVC", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultVC"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.result = calculatorBrain.getResult()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    
}

