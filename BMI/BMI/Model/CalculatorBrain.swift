//
//  CalculatorBrain.swift
//  BMI
//
//  Created by Arda Nar on 3.09.2023.
//

import UIKit

struct CalculatorBrain{
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        
        let bmiValue = (weight / (height * height))
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, result: "Zayıf", color: UIColor.cyan)
        }else if bmiValue >= 18.5 && bmiValue < 25{
            bmi = BMI(value: bmiValue, result: "Normal", color: UIColor.green)
        }else if bmiValue >= 25 && bmiValue < 30{
            bmi = BMI(value: bmiValue, result: "Kilolu", color: UIColor.yellow)
        }else if bmiValue >= 30 && bmiValue < 35{
            bmi = BMI(value: bmiValue, result: "Obez", color: UIColor.orange)
        }else{
            bmi = BMI(value: bmiValue, result: "Morbed Obez", color: UIColor.red)
        }
        
        
    }
    
    func getBMIValue()-> String{
    
        return String(format: "%.1f", bmi?.value ?? 0.0)
        
    }
    
    func getResult() -> String{
        return bmi?.result ?? "Değer yok"
        
    }
    
    func getColor()-> UIColor{
        return bmi?.color ?? UIColor.white
    }
}
