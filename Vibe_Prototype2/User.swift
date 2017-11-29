//
//  User.swift
//  Vibe_Prototype2
//
//  Created by Danny Shin on 11/20/17.
//  Copyright © 2017 Danny Shin. All rights reserved.
//

import Foundation

class User {
    var key:String
    var name:String
    var status:String
    
    init(key: String, name:String, status:String) {
        self.key = key
        self.name = name
        self.status = status
    }
}
