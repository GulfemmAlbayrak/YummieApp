//
//  ApiResponse.swift
//  Yummie
//
//  Created by Gülfem Albayrak on 22.12.2023.
//

import Foundation

struct ApiResponse<T: Decodable>: Decodable {
    let status: Int
    let message: String?
    let data: T?
    let error: String?
}
