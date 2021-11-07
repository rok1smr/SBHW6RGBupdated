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
    
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var greenTextField: UITextField!
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var blueTextField: UITextField!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSlider.tintColor = .red
        redSlider.minimumValue = 0
        redSlider.maximumValue = 255
        redSlider.value = 0
        
        greenSlider.tintColor = .green
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 255
        greenSlider.value = 0
        
        blueSlider.tintColor = .blue
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 255
        blueSlider.value = 0
        
        view1.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        
    }
    
    
    @IBAction func redSliderAction(_ sender: Any) {
        redTextField.text = String(format: "%.2f", Double(redSlider.value))
        view1.alpha = CGFloat(redSlider.value)
        view1.backgroundColor = UIColor(red: CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: 1)
    }

    @IBAction func greenSliderAction(_ sender: Any) {
        greenTextField.text = String(format: "%.2f", Double(greenSlider.value))
        view1.alpha = CGFloat(greenSlider.value)
        view1.backgroundColor = UIColor(red: CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: 1)
    }
    
    @IBAction func blueSliderAction(_ sender: Any) {
        blueTextField.text = String(format: "%.2f", Double(blueSlider.value))
        view1.alpha = CGFloat(blueSlider.value)
        view1.backgroundColor = UIColor(red: CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: 1)
    }
}

