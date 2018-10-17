//
//  SecondViewController.swift
//  Ejemplo-Tabbar-Navbar
//
//  Created by Eduardo Telaya on 10/16/18.
//  Copyright © 2018 Eduardo Telaya. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}

extension SecondViewController:UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellView = tableView.dequeueReusableCell(withIdentifier: "celda1", for: indexPath)
        let row = indexPath.row
        cellView.textLabel?.text = "titulo \(row)"
        cellView.detailTextLabel?.text = "subtitulo"
        return cellView
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "demo titulo \(section)"
    }
    
}
