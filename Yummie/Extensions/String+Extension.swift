//
//  String+Extension.swift
//  Yummie
//
//  Created by Gülfem Albayrak on 21.12.2023.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
