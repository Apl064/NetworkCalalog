//
//  Model.swift
//  NetworkCalalog
//
//  Created by Pavel Metelin on 09.04.2022.
//

import Foundation

struct Predict: Decodable {
    let name: String
    let age: Int
    let count: Int
}

struct Makeup: Decodable {
    let id: Int?
    let name: String?
    let price: String?
//    let image_link: String?
    
    init(makeupData: [String: Any]) {
        id = makeupData["id"] as? Int
        name =  makeupData["name"] as? String
        price = makeupData["price"] as? String
//        image_link = makeupData["image_link"] as? String
    }
    
    static func getMakeups(from value: Any) -> [Makeup] {
        guard let makeupsData = value as? [[String: Any]] else { return [] }
        
        var makeups: [Makeup] = []
        for makeupData in makeupsData {
            let makeup = Makeup(makeupData: makeupData)
            makeups.append(makeup)
        }
        return makeups
    }
}
