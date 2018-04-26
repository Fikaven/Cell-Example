//
//  MyCustomCell.swift
//  Cell Example
//
//  Created by Stephen Smith on 4/26/18.
//  Copyright © 2018 Stephen Smith. All rights reserved.
//

import UIKit

class MyCustomCell: UITableViewCell {

    @IBOutlet weak var lblFirstName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
