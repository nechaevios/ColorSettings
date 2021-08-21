//
//  ViewController.swift
//  ColorSettings
//
//  Created by Nechaev Sergey  on 21.08.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 22

    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        
        let redColorValue = CGFloat(round(Double(redSlider.value) * 100) / 100)
        
        let greenColorValue = CGFloat(round(Double(greenSlider.value) * 100) / 100)
    
        let blueColorValue = CGFloat(round(Double(blueSlider.value) * 100) / 100)
        
        colorView.backgroundColor = UIColor(red: redColorValue, green: greenColorValue, blue: blueColorValue, alpha: 1.0)
    }
    
}

