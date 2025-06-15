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
       
        navigationItem.title = person.fullName
        phoneLabel.text = person.phoneNumber
        emailLabel.text = person.email
        
    }
    



}
