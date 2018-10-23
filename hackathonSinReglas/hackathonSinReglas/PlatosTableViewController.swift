//
//  PlatosTableViewController.swift
//  ProyectoG76
//
//  Created by Fredy asencios 2018 on 10/18/18.
//  Copyright © 2018 Academia moviles. All rights reserved.
//

import UIKit

class PlatosTableViewController: UITableViewController {
    var success:Bool!
    override func viewDidLoad() {
        super.viewDidLoad()
        success = true
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 12
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaplatos", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = "fila N \(indexPath.row)"
        return cell
    }
    //MARK:- opcion 1
    
    @IBAction func irVistaAdd(_ sender: Any) {
        let objDestinoAdd = self.storyboard?.instantiateViewController(withIdentifier: "vistaAdd") ?? self
        //presentar modal
        //self.present(objDestinoAdd, animated: true, completion: nil)
        //agregar la vista al nav controller
        
        self.navigationController?.pushViewController(objDestinoAdd, animated: true)
    }
    //MARK:- opcion 2 perform segue
    
    @IBAction func seleccionandoDestino(_ sender: Any) {
        if success {
            performSegue(withIdentifier: "s1", sender: self)
            success = false
        }else{
            performSegue(withIdentifier: "s2", sender: self)
        }
    }
    
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
