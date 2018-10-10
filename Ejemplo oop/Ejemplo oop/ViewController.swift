//
//  ViewController.swift
//  Ejemplo oop
//
//  Created by Eduardo Telaya on 10/9/18.
//  Copyright © 2018 Eduardo Telaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAge: UITextField!
    @IBOutlet weak var txtViewMessage: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func change(_ sender: Any) {
        self.validationAlert()
    }
    
    @IBAction func calculate(_ sender: Any) {
        let pet = Pet(name: txtName.text!, age: Int(txtAge.text!)!)
        let message = pet.calculatePetAge()
        txtViewMessage.text = message
    }
    
    func validationAlert() {
        let alert = UIAlertController(title: "Alerta validación", message: "Ingrese correctamente los datos", preferredStyle: .alert)
        self.present(alert, animated: true, completion: nil);
    }

}

