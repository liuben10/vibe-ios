//
//  NearbyUserTableViewCell.swift
//  Vibe_Prototype2
//
//  Created by Benjamin Liu on 11/22/17.
//  Copyright © 2017 Danny Shin. All rights reserved.
//

import UIKit

class NearbyUserTableViewCell: UITableViewCell {
    
    @IBOutlet weak var buttonLabel: UIButton!
    @IBAction func createFriendRequest(_ sender: Any) {
        print("Creating Friend Request");
        self.buttonLabel.setTitle("Requested", for: .normal)
        
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
    }

}
