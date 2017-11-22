//
//  NearbyTableViewCell.swift
//  Vibe_Prototype2
//
//  Created by Benjamin Liu on 11/21/17.
//  Copyright © 2017 Danny Shin. All rights reserved.
//

import UIKit

class NearbyTableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var status: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
