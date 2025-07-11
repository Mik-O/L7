//
//  Model.swift
//  L7
//
//  Created by Таня Кожевникова on 14.06.2025.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName : String {
        "\(name) \(surname)"
    }
}



extension Person {
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumbers.shuffled()
        
        for index in 0..<names.count {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phoneNumbers[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
    
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
