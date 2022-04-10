//
//  Data.swift
//  NetworkCalalog
//
//  Created by Pavel Metelin on 10.04.2022.
//

import Foundation

enum NameAPI: String, CaseIterable {
    case api_1 = "Makeup"
}

enum NameURL: String, CaseIterable {
    case makeupURL = "http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline"
}

enum Result<Success, Error: Swift.Error> {
    case success(Success)
    case failure(Error)
}
