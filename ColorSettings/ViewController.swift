//
//  ViewController.swift
//  ColorSettings
//
//  Created by Nechaev Sergey  on 21.08.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 22
    }


}

