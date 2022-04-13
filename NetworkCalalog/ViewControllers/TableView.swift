//
//  TableView.swift
//  NetworkCalalog
//
//  Created by Pavel Metelin on 10.04.2022.
//

import UIKit
import Alamofire

class TableView: UITableViewController {
    
    var makeups: [Makeup] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        makeups.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        150
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as?  TableViewCell else { return UITableViewCell() }
        
        let makeup = makeups[indexPath.row]
        cell.idLabel.text = "SCU: \(makeup.id ?? 0)"
        cell.nameLabel.text = "Name: \(makeup.name ?? "")"
        cell.priceLabel.text = "Price: \(makeup.price ?? "")"
        return cell
    }
    
    private func fetchData(from url: String?) {
   
    }
    
    func trablAPIButtonPressed() {
        AF.request(NameURL.makeupURL.rawValue)
            .validate()
            .responseJSON { dataResponse in
                switch dataResponse.result {
                case .success(let value):
                    self.makeups = Makeup.getMakeups(from: value)
                    self.tableView.reloadData()
                case .failure(let error):
                    print(error)
                }
            }
        
    }
}

