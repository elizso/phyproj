//
//  ViewController.swift
//  Phy proj
//
//  Created by Joey Shum on 2018-01-24.
//  Copyright © 2018 Joey Shum. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var iAngle: UITextField!

    @IBOutlet var rAngle: UITextField!
    
    @IBOutlet var tip: UILabel!
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var tips: UILabel!
    @IBOutlet var criticalAngleResult: UILabel!
    @IBAction func goButton(_ sender: Any) {
        
        

        let i = CGFloat(Double(iAngle.text!)!)
        let r = CGFloat(Double(rAngle.text!)!)
        var refractiveIndexOutput = CGFloat(123.123)
        var criticalAngleOutput = CGFloat(123.123)
        if i != nil && r != nil{
            refractiveIndexOutput = sin(i*CGFloat(M_PI)/180)/sin(r*CGFloat(M_PI)/180)
            criticalAngleOutput = asin(1/refractiveIndexOutput)/CGFloat(M_PI)*180
            
        }else{
            print("both aren't numbers")
        }
        if refractiveIndexOutput >= 1{
            resultLabel.text = "The refractive index is: \(round(refractiveIndexOutput*100)/100)"
            criticalAngleResult.text = "The critical angle is: \(round(criticalAngleOutput*100)/100)"
            tips.text = "The refractive index is sin(\(i))/sin(\(r))"
            tip.text = "The critical angle is arcsin(1/\(round(refractiveIndexOutput*100)/100))"
        }else{
            resultLabel.text = "The input is incorrect"
            criticalAngleResult.text = " "
            tips.text = " "
            tip.text = " "
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

