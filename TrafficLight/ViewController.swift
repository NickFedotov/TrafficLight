//
//  ViewController.swift
//  TrafficLight
//
//  Created by Nikita Fedotov on 20.05.2020.
//  Copyright © 2020 Nikita Fedotov. All rights reserved.
//

import UIKit

enum LightCollor{
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet weak var redCollor: UIView!
    @IBOutlet weak var yellowCollor: UIView!
    @IBOutlet weak var greenColor: UIView!
    
    @IBOutlet var startButtonOutlet: UIButton!
    
    private var currentLight = LightCollor.red
    
    private let lightOff: CGFloat = 0.3
    private let lightOn: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButtonOutlet.layer.cornerRadius = 10
        
        redCollor.alpha = lightOff
        yellowCollor.alpha = lightOff
        greenColor.alpha = lightOff
        
    }
    
    override func viewWillLayoutSubviews() {
        redCollor.layer.cornerRadius = redCollor.frame.width / 2
        yellowCollor.layer.cornerRadius = yellowCollor.frame.width / 2
        greenColor.layer.cornerRadius = yellowCollor.frame.width / 2
        
    }

    @IBAction func startButton(_ sender: Any) {
        
        startButtonOutlet.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case .red:
            redCollor.alpha = lightOn
            greenColor.alpha = lightOff
            currentLight = .yellow
        case .yellow:
            yellowCollor.alpha = lightOn
            redCollor.alpha = lightOff
            currentLight = .green
        case .green:
            greenColor.alpha = lightOn
            yellowCollor.alpha = lightOff
            currentLight = .red
        }
    }
    
}

