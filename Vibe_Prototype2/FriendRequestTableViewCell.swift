//
//  FriendRequestTableViewCell.swift
//  Vibe_Prototype2
//
//  Created by Benjamin Liu on 11/21/17.
//  Copyright © 2017 Danny Shin. All rights reserved.
//

import UIKit

class FriendRequestTableViewCell: UITableViewCell {
    
    @IBOutlet weak var toRequestId: UILabel!
    @IBOutlet weak var fromRequestId: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
