//
//  ViewController.swift
//  NetworkCalalog
//
//  Created by Pavel Metelin on 13.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var easyAPILabel: UILabel!
    
    private var predict: Predict?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
//    func fetchData(from url: String?) {
//        NetworkData.shared.fetchPredictData(from: url) { predict in
//            self.predict = predict
//        }
//    }
}
