//
//  TapBarViewController.swift
//  L7
//
//  Created by Таня Кожевникова on 14.06.2025.
//

import UIKit

class TapBarViewController: UITabBarController {
    let persons = Person.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers(with: persons)
    }
     
    private func setupViewControllers(with perons: [Person]) {
        let personsVC = viewControllers?.first as! PersonsListViewController
        let conactsVC = viewControllers?.last as! ContactsInfoViewController
        
        personsVC.persons = perons
        conactsVC.persons = perons
        
        
    }
}

