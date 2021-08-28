//
//  ViewController.swift
//  RE_traffic_lights
//
//  Created by Дэвид Бердников on 27.08.2021.
//

import UIKit

enum CurrentLught {
    case red, yellow, green
}


class ViewController: UIViewController {
    
    @IBOutlet weak var redLabel: UIView!
    @IBOutlet weak var yellowLabel: UIView!
    @IBOutlet weak var greenLabel: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    
    private var currentLight = CurrentLught.red
    private var lightIsOn: CGFloat = 1
    private var lightIsOff: CGFloat = 0.3
    
    override func viewWillLayoutSubviews() {
        redLabel.layer.cornerRadius = redLabel.frame.height / 2
        yellowLabel.layer.cornerRadius = yellowLabel.frame.height / 2
        greenLabel.layer.cornerRadius = greenLabel.frame.height / 2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLabel.alpha = lightIsOff
        yellowLabel.alpha = lightIsOff
        greenLabel.alpha = lightIsOff
    }

    @IBAction func startButtonPressed() {
        
        switch currentLight {
        case .red:
            startButton.setTitle("NEXT", for: .normal)
            
            currentLight = .yellow
            redLabel.alpha = lightIsOn
            greenLabel.alpha = lightIsOff
        case .yellow:
            currentLight = .green
            redLabel.alpha = lightIsOff
            yellowLabel.alpha = lightIsOn
        case .green:
            currentLight = .red
            greenLabel.alpha = lightIsOn
            yellowLabel.alpha = lightIsOff
        }
    }
    
    
}

