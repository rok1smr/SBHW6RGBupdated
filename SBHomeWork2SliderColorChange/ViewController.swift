//
//  ViewController.swift
//  SBHomeWork2SliderColorChange
//
//  Created by Konstantin on 22.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var redTextField: UITextField!
    @IBOutlet weak var redSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSlider.tintColor = .red
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.value = 0
        view1.alpha = CGFloat(redSlider.value)
    }

    @IBAction func redSliderAction(_ sender: Any) {
        redTextField.text = String(format: "%.2f", Double(redSlider.value))
        view1.alpha = CGFloat(redSlider.value)
        view1.backgroundColor = .red
    }
    
}

