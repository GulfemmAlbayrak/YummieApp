//
//  Dish.swift
//  Yummie
//
//  Created by Gülfem Albayrak on 21.12.2023.
//

import Foundation

struct Dish {
    let id: String?
    let name: String?
    let description: String?
    let image: String?
    let calories: Int?
    
    var formattedCalories: String {
        return String(format: " \(calories ?? 0) calories")
    }
}
