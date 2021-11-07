//
//  ViewController.swift
//  SBHomeWork2SliderColorChange
//
//  Created by Konstantin on 22.10.2021.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var settingsView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var redTextField: UITextField!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redValueLabel: UILabel!
    
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var greenTextField: UITextField!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var greenValueLabel: UILabel!
    
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var blueTextField: UITextField!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    
    var redValue:Float = 0
    var greenValue:Float = 0
    var blueValue:Float = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        redSlider.tintColor = .red
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.value = redValue
        redValueLabel.text = String(redSlider.value)
        
        greenSlider.tintColor = .green
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.value = greenValue
        greenValueLabel.text = String(greenSlider.value)
        
        blueSlider.tintColor = .blue
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.value = blueValue
        blueValueLabel.text = String(blueSlider.value)
        
        settingsView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    
    @IBAction func redSliderAction(_ sender: Any) {
        redValueLabel.text = String(format: "%.2f", Double(redSlider.value))
        settingsView.alpha = CGFloat(redSlider.value)
        settingsView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }

    @IBAction func greenSliderAction(_ sender: Any) {
        greenValueLabel.text = String(format: "%.2f", Double(greenSlider.value))
        settingsView.alpha = CGFloat(greenSlider.value)
        settingsView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func blueSliderAction(_ sender: Any) {
        blueValueLabel.text = String(format: "%.2f", Double(blueSlider.value))
        settingsView.alpha = CGFloat(blueSlider.value)
        settingsView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let initialVC = segue.destination as? InitialViewController else { return }
        initialVC.initialViewRedValue = redSlider.value
        initialVC.initialViewGreenValue = greenSlider.value
        initialVC.initialViewBlueValue = blueSlider.value
    }
}

