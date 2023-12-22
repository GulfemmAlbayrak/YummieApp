//
//  Order.swift
//  Yummie
//
//  Created by Gülfem Albayrak on 22.12.2023.
//

import Foundation

struct Order: Decodable {
    let id: String?
    let name: String?
    let dish: Dish?
}
