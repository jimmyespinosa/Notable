//
//  NotableViewController.swift
//  Notable
//
//  Created by Jimmy Espinosa on 3/25/18.
//  Copyright © 2018 Jimmy Espinosa. All rights reserved.
//

import UIKit

class NotableViewController: UITableViewController {
    
    let itemArray = ["Find Luke", "Buy Blue Milk", "Destroy Death Star"]
    
    @IBOutlet var notableTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "NotableItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    //MARK - TableView Delegate Methods
    
    //Fired when we click on any cell in the tableview
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print (itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }

        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }

    
}

