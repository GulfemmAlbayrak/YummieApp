//
//  DishCategory.swift
//  Yummie
//
//  Created by Gülfem Albayrak on 21.12.2023.
//

import Foundation

struct DishCategory: Decodable {
    let id: String?
    let name: String?
    let image: String?
    
    enum CodingKeys: String, CodingKey {
        case id 
        case name = "title"
        case image
    }
}
