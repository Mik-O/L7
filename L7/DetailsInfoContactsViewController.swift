//
//  DetailsInfoContactsViewController.swift
//  L7
//
//  Created by Таня Кожевникова on 14.06.2025.
//

import UIKit

class DetailsInfoContactsViewController: UIViewController {
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        title = person.fullName
        phoneLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"
        
    }
    



}
