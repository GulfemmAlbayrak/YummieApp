//
//  Route.swift
//  Yummie
//
//  Created by Gülfem Albayrak on 22.12.2023.
//

import Foundation

enum Route {
    static let baseURL =  "https://yummie.glitch.me"
    
    case fetchAllCategories
    case placeOrder(String)
 
    var description: String {
        switch self {
        case .fetchAllCategories: return "/dish-categories"
        case .placeOrder(let dishId): return "/orders/\(dishId)"
        }
    }
}
