//
//  TableViewCell.swift
//  NetworkCalalog
//
//  Created by Pavel Metelin on 10.04.2022.
//

import UIKit

class TableViewCell: UITableViewCell {
    
   

    @IBOutlet var idLabel: UILabel!
    @IBOutlet var brandLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var descLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
