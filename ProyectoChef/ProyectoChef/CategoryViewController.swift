//
//  CategoryViewController.swift
//  ProyectoChef
//
//  Created by Eduardo Telaya on 10/18/18.
//  Copyright © 2018 Eduardo Telaya. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {
    
    var categories = [[String:String]]()

    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        categories = categoryData()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    override func viewDidDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
    
    //[String:String]
    func categoryData()->[Dictionary<String, String>] {
        let catagoria1 = [ "nombre_categoria": "Entradas", "id_categoria": "1"]
        
        let categoria2 = [ "nombre_categoria": "Segundos", "id_categoria": "2"]
        
        let categoria3 = [ "nombre_categoria": "Sopas", "id_categoria": "3"]
        
        let categoria4 = [ "nombre_categoria": "Postres", "id_categoria": "4"]
        
        let categoria5 = [ "nombre_categoria": "Vinos", "id_categoria": "5"]
        
        return [catagoria1, categoria2, categoria3, categoria4, categoria5]
    }

}

extension CategoryViewController:UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda1", for: indexPath)
        let nombreCategoria = categories[indexPath.row]["nombre_categoria"]
        celda.textLabel?.text = nombreCategoria
        return celda
    }
}
