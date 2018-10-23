//
//  CategoriaViewController.swift
//  ProyectoG76
//
//  Created by Fredy asencios 2018 on 10/18/18.
//  Copyright © 2018 Academia moviles. All rights reserved.
//

import UIKit

class CategoriaViewController: UIViewController {
    var arrayCategorias = [[String:String]]()
    @IBOutlet weak var miTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayCategorias = categoriaDatos()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    override func viewDidDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
    //Dictionary<String,String>
    //[String:String]
    func categoriaDatos()->[Dictionary<String,String>]{
        let catagoria1 = [ "nombre_categoria": "Entradas", "id_categoria": "1"]
        
        let categoria2 = [ "nombre_categoria": "Segundos", "id_categoria": "2"]
        
        let categoria3 = [ "nombre_categoria": "Sopas", "id_categoria": "3"]
        
        let categoria4 = [ "nombre_categoria": "Postres", "id_categoria": "4"]
        
        let categoria5 = [ "nombre_categoria": "Vinos", "id_categoria": "5"]
        
        return [catagoria1,categoria2,categoria3,categoria4,categoria5]
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension CategoriaViewController:UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCategorias.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda1", for: indexPath)
        let nombreCategoria = arrayCategorias[indexPath.row]["nombre_categoria"]
        celda.textLabel?.text = nombreCategoria
        return celda
    }
    
    
    
}
