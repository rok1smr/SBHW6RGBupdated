//
//  InitialViewController.swift
//  SBHomeWork2SliderColorChange
//
//  Created by Konstantin on 07.11.2021.
//

import UIKit

class InitialViewController: UIViewController {
    
    @IBOutlet weak var initialView: UIView!
    
    var initialViewRedValue: Float = 0
    var initialViewGreenValue: Float = 0.5
    var initialViewBlueValue: Float = 1
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        initialView.backgroundColor = UIColor(red: CGFloat(initialViewRedValue), green: CGFloat(initialViewGreenValue), blue: CGFloat(initialViewBlueValue), alpha: 1)
    }
    
    @IBAction func unwind(_ sender: UIStoryboardSegue) {}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.redValue = initialViewRedValue
        settingsVC.greenValue = initialViewGreenValue
        settingsVC.blueValue = initialViewBlueValue
    }
}
