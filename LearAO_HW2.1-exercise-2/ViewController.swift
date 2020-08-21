//
//  ViewController.swift
//  LearAO_HW2.1-exercise-2
//
//  Created by Andrey Lear on 20.08.2020.
//  Copyright © 2020 Andrey Lear. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    private var count = 0
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.alpha = lightIsOff
        yellowView.alpha = lightIsOff
        greenView.alpha = lightIsOff

        startButton.layer.cornerRadius = 8
    }
    
    override func viewDidLayoutSubviews() {
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
    }
    
    func changeAlpha(lastView: UIView, nextView: UIView) {
        lastView.alpha = lightIsOff
        nextView.alpha = lightIsOn
    }

    @IBAction func changeColor() {
        
        startButton.setTitle("Следующий", for: .normal)
        
        switch count {
        case 0:
            changeAlpha(lastView: greenView, nextView: redView)
            
        case 1:
            changeAlpha(lastView: redView, nextView: yellowView)
            
        case 2:
            changeAlpha(lastView: yellowView, nextView: greenView)
            
        default:
            print(count)
        }
        
        count += 1
        
        if count == 3 {
            count = 0
        }
    }
    
}

