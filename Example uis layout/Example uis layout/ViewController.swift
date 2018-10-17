//
//  ViewController.swift
//  Example uis layout
//
//  Created by Eduardo Telaya on 10/11/18.
//  Copyright © 2018 Eduardo Telaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var modal1: UIView!
    
    @IBOutlet weak var mySegment: UISegmentedControl!

    @IBOutlet weak var photo: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var desc: UITextView!
    
    @IBOutlet weak var mySwitch: UISwitch!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mySegment.selectedSegmentIndex = 1
        changeContent(mySegment)
    }

    @IBAction func changeContent(_ sender: Any) {
        let segmentSelected = mySegment.selectedSegmentIndex
        print("Changing content... on segment \(segmentSelected)")
        
        switch segmentSelected {
        case 0:
            label.text = "Lima"
            desc.text = "Ciudad de Reyes"
            let imgLima = UIImage(named: "lima_b")
            photo.image = imgLima
        case 1:
            label.text = "Trujillo"
            desc.text = "Ceviche nortenio"
            let imgTrujillo = UIImage(named: "trujillo")
            photo.image = imgTrujillo
        case 2:
            label.text = "Arequipa"
        default:
            label.text = "Lima"
        }
    }

    @IBAction func like(_ sender: Any) {
    }
    
    @IBAction func filterDescription(_ sender: Any) {
        if mySwitch.isOn {
            desc.isHidden = false
        }
        else {
            desc.isHidden = true
        }
    }
    
    
    @IBAction func showModal(_ sender: Any) {
        let x = UIScreen.main.bounds.width / 2
        let y = UIScreen.main.bounds.height / 2
        modal1.layer.position = CGPoint(x: x, y: y)
        self.view.addSubview(modal1)
    }
    
    
    @IBAction func closeModal(_ sender: Any) {
        modal1.removeFromSuperview()
    }
}



