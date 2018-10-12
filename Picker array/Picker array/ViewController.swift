//
//  ViewController.swift
//  Picker array
//
//  Created by Eduardo Telaya on 10/11/18.
//  Copyright © 2018 Eduardo Telaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var countries = [String]()
    var opt1:Array<String>?
    var opt2:[String]?
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var myPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countries = ["Perú", "Chile", "Ecuador", "Colombia", "Bolivia"];
        countries.append("Uruguay");
        
        // Do any additional setup after loading the view, typically from a nib.
    }
}

extension ViewController {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countries.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "Selecciona: \(countries[row])"
    }
    
}
