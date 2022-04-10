//
//  Model.swift
//  NetworkCalalog
//
//  Created by Pavel Metelin on 09.04.2022.
//

import Foundation

struct Makeup {
    let id: Int
    let brand: String
    let name: String
    let price: Double
    let image_link: String
    let description: String
    let product_type: String
    
    static func Makeup() -> [Makeup] {
        return []
    }
}
