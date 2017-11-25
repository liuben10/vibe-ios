//
//  NearbyUserTableViewCell.swift
//  Vibe_Prototype2
//
//  Created by Benjamin Liu on 11/22/17.
//  Copyright © 2017 Danny Shin. All rights reserved.
//

import UIKit

class NearbyUserTableViewCell: UITableViewCell {
    
    @IBAction func createFriendRequest(_ sender: Any) {
        print("Creating Friend Request");
        self.parent.performSegue(withIdentifier: "createFriendRequest", sender: self)
    }
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userStatus: UILabel!
    weak var parent: UIViewController!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
