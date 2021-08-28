//
//  ViewController.swift
//  RE_traffic_lights
//
//  Created by Дэвид Бердников on 27.08.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redLabel: UIView!
    @IBOutlet weak var yellowLabel: UIView!
    @IBOutlet weak var greenLabel: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLabel.layer.cornerRadius = redLabel.frame.height / 2
        yellowLabel.layer.cornerRadius = yellowLabel.frame.height / 2
        greenLabel.layer.cornerRadius = greenLabel.frame.height / 2
        
        startButton.layer.cornerRadius = 10
        
        redLabel.alpha = 0.3
        yellowLabel.alpha = 0.3
        greenLabel.alpha = 0.3
        
    }

    @IBAction func startButtonPressed() {
        
    }
    
}

