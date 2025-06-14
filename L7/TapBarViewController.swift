//
//  TapBarViewController.swift
//  L7
//
//  Created by Таня Кожевникова on 14.06.2025.
//

import UIKit

class TapBarViewController: UITabBarController {
    let personsList = generateData()
    
   override func viewDidLoad() {
        super.viewDidLoad()
       
       let personsListVC = viewControllers?.compactMap { $0 as? PersonsListViewController }.first
       let contactsVC = viewControllers?.compactMap { $0 as? ContactsInfoViewController }.first
       
       personsListVC?.persons = personsList
       contactsVC?.persons = personsList
    }
}

