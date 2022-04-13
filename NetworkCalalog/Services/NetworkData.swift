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
    case predictURL = "https://api.agify.io?name=bella"
    case makeupURL = "https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline"
}

enum NameAPI: String, CaseIterable {
//    case api1 = "Easy API test"
    case api2 = "Makeup AF"
//    case api3 = "Makeup URLS"
}

class NetworkData {
    static var shared = NetworkData()
    private init() {}

//    func fetchPredictData(from url: String?, with completion: @escaping(Predict) -> Void) {
//        guard let url = URL(string: url ?? "") else { return }
//
//        URLSession.shared.dataTask(with: url) { data, _, error in
//            guard let data = data else {
//                print(error?.localizedDescription ?? "No description Error")
//                return
//            }
//
//            do {
//                let predict = try JSONDecoder().decode(Predict.self, from: data)
//                DispatchQueue.main.async {
//                    completion(predict)
//                }
//            } catch let error {
//                print(error)
//            }
//        }.resume()
//    }
//    
//    func fetchMakeup(from url: String, with completion: @escaping(Result<Makeup, NetworkError>) -> Void) {
//        guard let url = URL(string: url) else {
//            completion(.failure(.invalidURL))
//            return
//        }
//
//        URLSession.shared.dataTask(with: url) { data, _, error in
//            guard let data = data else {
//                completion(.failure(.noData))
//                return
//            }
//            
//            do {
//                guard let makeups = try JSONSerialization.jsonObject(with: data) as? [String: Any] else { return}
//                DispatchQueue.main.async {
//                    completion(.success(makeups))
//                }
//            } catch {
//                completion(.failure(.decodingError))
//            }
//        }.resume()
//    }
    
//    func fetchImage(from url: String?, with completion: @escaping(Data) -> Void) {
//        guard let stringURL = url else { return }
//        guard let imageURL = URL(string: stringURL) else { return }
//        DispatchQueue.global().async {
//            guard let data = try? Data(contentsOf: imageURL) else { return }
//            DispatchQueue.main.async {
//                completion(data)
//            }
//        }
//    }
}
