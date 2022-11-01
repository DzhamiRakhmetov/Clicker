//
//  ViewController.swift
//  Clicker
//
//  Created by Dzhami Rakhmetov on 1/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private var clickButton: UIButton!
    @IBOutlet weak var clicksCountLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set value of Label to 0
        clicksCountLabel.text = "Значение счётчика: \n0"
        
        // Rounded buttons
        clickButton.layer.cornerRadius = 25
        clickButton.layer.masksToBounds = true
        resetButton.layer.cornerRadius = 25
        resetButton.layer.masksToBounds = true
    }
    var num : Int = 0
    
    @IBAction func clickButtonDidTap(_ sender: Any) {
         num += 1
        clicksCountLabel.text = "Значение счётчика: \n\(num)"
    }
    
    
    @IBAction func resetButtonDidTap(_ sender: Any) {
        resetCountLabel()
    }
    
    
    func resetCountLabel(){
        num = 0
        clicksCountLabel.text = "Значение счётчика: \n\(num)"
    }
}

