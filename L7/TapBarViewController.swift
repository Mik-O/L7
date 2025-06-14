//
//  TapBarViewController.swift
//  L7
//
//  Created by Таня Кожевникова on 14.06.2025.
//

import UIKit

class TapBarViewController: UITabBarController {
    let personsList = generateData()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let personsListVC = TapBarViewController.topViewController as! PersonsListViewController
        let personsListVC = tabBarController. as! PersonsListViewController }!
        personsListViewController.persons = personsList
        comtacsInfoViewController.persons = personsList
    }
}

