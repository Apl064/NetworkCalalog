//
//  TableView.swift
//  NetworkCalalog
//
//  Created by Pavel Metelin on 10.04.2022.
//

import UIKit

class TableView: UITableViewController {

    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    private var makeup: [Makeup] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NetworkData.shared.fetchMakeup(from: NameURL.makeupURL.rawValue) { result in
            switch result {
            case .success(let makeup):
                DispatchQueue.main.async {
                    self.makeup = makeup
                    print(makeup)
                    self.tableView.reloadData()
                }
            case .failure(let error):
                print(error)
            }
        }
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        makeup.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        90
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as?  TableViewCell else { return UITableViewCell() }
        
        cell.idLabel.text = String(makeup[indexPath.row].id ?? 0)
        return cell
    }
}
