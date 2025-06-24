//
//  PersonsListViewController.swift
//  L7
//
//  Created by Таня Кожевникова on 14.06.2025.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    var persons : [Person] = []
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellContact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailsVC = segue.destination as! DetailsInfoContactsViewController
            detailsVC.person = persons[indexPath.row]
        }
        
    }

}
