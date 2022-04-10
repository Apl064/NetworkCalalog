//
//  NetworkData.swift
//  NetworkCalalog
//
//  Created by Pavel Metelin on 09.04.2022.
//

import Foundation

class NetworkData {
    static var shared = NetworkData()

    private init() {}
    
    func fetchMakeup(from urlAPI: String, completion: @escaping (Result<[Makeup], Error>) -> ()) {
        guard let urlAPI = URL(string: urlAPI) else { return }
        URLSession.shared.dataTask(with: urlAPI) { data, responce, error in
            guard let data = data, let responce = responce else {
                completion(Result.failure(error!))
                return
            }
            
            do {
                guard let makeups = try? JSONDecoder().decode([Makeup].self, from: data) else {
                    completion(Result.failure(error!))
                    return
                }
                completion(Result.success(makeups))
            }
        }.resume()
    }
}
