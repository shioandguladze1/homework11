//
//  ViewController.swift
//  Shio Andguladze Homework 11
//
//  Created by Ako on 30.06.22.
//
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    
    @IBOutlet weak var textFiel: UITextField!
    
    @IBOutlet weak var btn: UIButton!
    
    @IBOutlet weak var slider: UISlider!
    
    
    @IBOutlet weak var mainLabel: UILabel!
    
    override func viewDidLoad() {
    super.viewDidLoad()
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        label1.text = String(Int.random(in: 0...Int(sender.value)))
        label2.text = String(Int.random(in: 0...Int(sender.value)))
        label3.text = String(Int.random(in: 0...Int(sender.value)))
    }

    @IBAction func buttonClick(_ sender: UIButton) {
        switch String(textFiel.text!) {
            case "sum" : mainLabel.text = String(
                labelSum()
            )
            break
            case "average": mainLabel.text = String((
                labelSum() / 3
            ))
            break
        case "maximum": mainLabel.text = String(
            max(label1.getIntValueOfLabelText(), label2.getIntValueOfLabelText(), label3.getIntValueOfLabelText())
        )
            break
            default : break
        }
    }
    
    private func labelSum()-> Int {
        label1.getIntValueOfLabelText() + label2.getIntValueOfLabelText() + label3.getIntValueOfLabelText()
    }
}

extension UILabel{
    
    func getIntValueOfLabelText()-> Int {
        Int(String(self.text!)) ?? 0
    }
    
}


