//
//  ViewController.swift
//  SBHomeWork2SliderColorChange
//
//  Created by Konstantin on 22.10.2021.
//

import UIKit

class SettingsViewController: UIViewController, UITextFieldDelegate {
    
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
        redTextField.delegate = self
        greenTextField.delegate = self
        blueTextField.delegate = self
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        redSlider.tintColor = .red
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.value = redValue
        redValueLabel.text = String(redValue)
        redTextField.text = String(redValue)
        
        greenSlider.tintColor = .green
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.value = greenValue
        greenValueLabel.text = String(greenValue)
        greenTextField.text = String(greenValue)
        
        blueSlider.tintColor = .blue
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.value = blueValue
        blueValueLabel.text = String(blueValue)
        blueTextField.text = String(blueValue)
        
        settingsView.backgroundColor = UIColor(red: CGFloat(redValue), green: CGFloat(greenValue), blue: CGFloat(blueValue), alpha: 1)
    }
    
    
    @IBAction func redSliderAction(_ sender: Any) {
        redValueLabel.text = String(format: "%.2f", Double(redSlider.value))
        redTextField.text = String(format: "%.2f", Double(redSlider.value))
        settingsView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func greenSliderAction(_ sender: Any) {
        greenValueLabel.text = String(format: "%.2f", Double(greenSlider.value))
        greenTextField.text = String(format: "%.2f", Double(greenSlider.value))
        settingsView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func blueSliderAction(_ sender: Any) {
        blueValueLabel.text = String(format: "%.2f", Double(blueSlider.value))
        blueTextField.text = String(format: "%.2f", Double(blueSlider.value))
        settingsView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let initialVC = segue.destination as? InitialViewController else { return }
        initialVC.initialViewRedValue = redSlider.value
        initialVC.initialViewGreenValue = greenSlider.value
        initialVC.initialViewBlueValue = blueSlider.value
    }
}


extension SettingsViewController {
    
    func switchBasedNextTextField(_ textField: UITextField) {
        switch textField {
        case redTextField:
            greenTextField.becomeFirstResponder()
        case greenTextField:
            blueTextField.becomeFirstResponder()
        default:
            blueTextField.resignFirstResponder()
            performSegue(withIdentifier: "toInitial", sender: self)
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switchBasedNextTextField(textField)
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
}
