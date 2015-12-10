//
//  TableViewCell.swift
//  TableView
//
//  Created by amrit on 12/9/15.
//  Copyright © 2015 Amrit. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet var TowerImage: UIImageView!
    @IBOutlet var TowerName: UILabel!
    @IBOutlet var TowerLocation: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
