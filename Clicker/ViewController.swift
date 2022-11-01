//
//  ViewController.swift
//  Clicker
//
//  Created by Dzhami Rakhmetov on 1/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clickButton: UIButton!
    @IBOutlet weak var numberOfClicks: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set value of Label to 0
        numberOfClicks.text = "0"
        
        // Rounded buttons
        clickButton.layer.cornerRadius = 25
        clickButton.layer.masksToBounds = true
        resetButton.layer.cornerRadius = 25
        resetButton.layer.masksToBounds = true
    }
    var num : Int = 0
    
    @IBAction func buttonDidTap(_ sender: Any) {
         num += 1
        numberOfClicks.text = "\(num)"
    }
    
    
    @IBAction func resetButtonDidTap(_ sender: Any) {
        num = 0
        numberOfClicks.text = "\(num)"
    }
    
}

