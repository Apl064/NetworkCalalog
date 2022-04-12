//
//  NetworkData.swift
//  NetworkCalalog
//
//  Created by Pavel Metelin on 09.04.2022.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case noData
    case decodingError
}

enum Result<Success, Error: Swift.Error> {
    case success(Success)
    case failure(Error)
}

enum NameURL: String, CaseIterable {
    case makeupURL = "https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline"
}

enum NameAPI: String, CaseIterable {
    case api1 = "Makeup"
}

class NetworkData {
    static var shared = NetworkData()
    private init() {}

    func fetchMakeup(from url: String?, with completion: @escaping(Makeup) -> Void) {
        guard let url = URL(string: url ?? "") else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No description Error")
                return
            }
            
            do {
                let makeup = try JSONDecoder().decode(Makeup.self, from: data)
            }
        }
    }
}
