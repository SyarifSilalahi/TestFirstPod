//
//  ViewController.swift
//  TestFirstPod
//
//  Created by Syarif Silalahi on 04/06/2016.
//  Copyright (c) 2016 Syarif Silalahi. All rights reserved.
//

import UIKit
import TestFirstPod

class ViewController: UIViewController {
    @IBOutlet var viewPulse : UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.Tap))
        self.viewPulse.addGestureRecognizer(tapGesture)
    }
    
    @objc func Tap(){
        var pulseEffect:CALayer!
        pulseEffect = TestFirstPod(repeatCount: 0, radius:70, position:self.viewPulse.center)
        pulseEffect.backgroundColor = UIColor.lightGrayColor().CGColor
        self.viewPulse.layer.insertSublayer(pulseEffect, below: self.viewPulse.layer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

