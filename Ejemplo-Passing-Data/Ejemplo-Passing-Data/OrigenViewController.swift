//
//  OrigenViewController.swift
//  Ejemplo-Passing-Data
//
//  Created by Eduardo Telaya on 10/16/18.
//  Copyright © 2018 Eduardo Telaya. All rights reserved.
//

import UIKit

class OrigenViewController: UIViewController {

    @IBOutlet weak var txtInput: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue1" {
            let dataInput = txtInput.text
            let destinity = segue.destination as! DestinityViewController
            destinity.parametro = dataInput;
        }
    }
    
}
