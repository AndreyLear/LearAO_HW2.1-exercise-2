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
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.alpha = 0.6
        yellowView.alpha = 0.6
        greenView.alpha = 0.6
        
        redView.layer.cornerRadius = redView.frame.size.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.size.width / 2
        greenView.layer.cornerRadius = greenView.frame.size.width / 2
        
        startButton.layer.cornerRadius = 8
    }
    
    func changeAlpha(lastView: UIView, nextView: UIView) {
        lastView.alpha = 0.6
        nextView.alpha = 1
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

