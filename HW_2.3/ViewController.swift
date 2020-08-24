//
//  ViewController.swift
//  HW_2.3
//
//  Created by Андрей Аверьянов on 23.08.2020.
//  Copyright © 2020 Андрей Аверьянов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewColor: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewColor.layer.cornerRadius = 10
        
        let redSliderValue = CGFloat(redSlider.value)
        let greenSliderValue = CGFloat(greenSlider.value)
        let blueSliderValue = CGFloat(blueSlider.value)
        
        viewColor.backgroundColor = UIColor(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue, alpha: 1)
        
       
        
    }
    
    

    @IBAction func redSliderAction() {
        viewDidLoad()
        redLabel.text = String(format: "%.2f", redSlider.value)
        
    }
    
    @IBAction func greenSliderAction() {
        viewDidLoad()
        greenLabel.text = String(format: "%.2f", greenSlider.value)
    }
    
    @IBAction func blueSliderAction() {
        viewDidLoad()
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }
}

