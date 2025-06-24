//
//  DataManager.swift
//  L7
//
//  Created by Таня Кожевникова on 24.06.2025.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
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
    
    private init() {}
}
