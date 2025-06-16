//
//  ContactsInfoViewController.swift
//  L7
//
//  Created by Таня Кожевникова on 14.06.2025.
//

import UIKit

class ContactsInfoViewController: UITableViewController {
    
    var persons : [Person] = []
    
    override func viewDidLoad() {
        tableView.rowHeight = 80
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellContactInfo", for: indexPath)
        
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        
        content.text = person.email
        content.secondaryText = person.phoneNumber
        
        return cell
    }
}
