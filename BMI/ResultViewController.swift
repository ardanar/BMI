//
//  ResultViewController.swift
//  BMI
//
//  Created by Arda Nar on 2.09.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var color: UIColor?
    var result: String?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        resultLabel.text = result
        view.backgroundColor = color
        
        //  -18.5 zayıf
        // 18.5-25 normal
        // 25-30 kilolu
        // 30-35 obez
        // 35-  morbid obez
        
        
        
    }
    

    @IBAction func recalculateButton(_ sender: UIButton) {
        
        self.dismiss(animated: true)
        
    }
    

}
