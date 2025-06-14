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
        return "\(name) \(surname)"
    }
}

class DataManager {
    let names = [
        "Петр",
        "Василий",
        "Александр",
        "Сергей",
        "Иван",
        "Максим",
        "Игорь",
        "Боря",
        "Генадий",
        "Дмитрий"
    ]
    let surnames = [
        "Иванов",
        "Петров",
        "Сидоров",
        "Михайлов",
        "Козлов",
        "Васильев",
        "Дмитриев",
        "Новиков",
        "Федоров",
        "Марков"
    ]
    let emails = [
        "petr@mail.ru",
        "vasily@mail.ru",
        "alexandr@mail.ru",
        "sergey@mail.ru",
        "ivan@mail.ru",
        "maxim@mail.ru",
        "igor@mail.ru",
        "borya@mail.ru",
        "genadiy@mail.ru",
        "dmitriy@mail.ru"
    ]
    let phoneNumbers = [
        "+79123456789",
        "+79876543210",
        "+79012345678",
        "+79987654321",
        "+791122334455",
        "+792233445566",
        "+793344556677",
        "+79239123456",
        "+794455667788",
        "+795566778899"
    ]
}

func generateData() -> [Person] {
    var data: [Person] = []
    var intermediaryNames = DataManager().names
    var intermediarySurnames = DataManager().surnames
    var intermediaryEmails = DataManager().emails
    var intermediaryPhoneNumbers = DataManager().phoneNumbers

    for _ in 0..<intermediaryNames.count {
        let person = Person(
            name: intermediaryNames.remove(at: Int.random(in: 0..<intermediaryNames.count)),
            surname: intermediarySurnames.remove(at: Int.random(in: 0..<intermediarySurnames.count)),
            email: intermediaryEmails.remove(at: Int.random(in: 0..<intermediaryEmails.count)),
            phoneNumber: intermediaryPhoneNumbers.remove(at: Int.random(in: 0..<intermediaryPhoneNumbers.count))
        )
        data.append(person)
    }
    return data
}

