//
//  AllDishes.swift
//  Yummie
//
//  Created by Gülfem Albayrak on 22.12.2023.
//

import Foundation

struct AllDishes: Decodable {
    let categories: [DishCategory]?
    let populars: [Dish]?
    let specials: [Dish]?
}
