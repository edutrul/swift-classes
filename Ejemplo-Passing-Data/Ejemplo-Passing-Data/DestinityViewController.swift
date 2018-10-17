//
//  DestinityViewController.swift
//  Ejemplo-Passing-Data
//
//  Created by Eduardo Telaya on 10/16/18.
//  Copyright © 2018 Eduardo Telaya. All rights reserved.
//

import UIKit

class DestinityViewController: UIViewController {
    
    var parametro:String!
    
    @IBOutlet weak var txtOutput: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtOutput.text = parametro

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func saliendo(_ sender: Any) {
        self.dismiss(animated: true) {
            print("Lanzar procesos concurrentes")
        }
    }
    

}
