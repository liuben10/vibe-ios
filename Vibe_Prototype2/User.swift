//
//  User.swift
//  Vibe_Prototype2
//
//  Created by Danny Shin on 11/20/17.
//  Copyright © 2017 Danny Shin. All rights reserved.
//

import Foundation


class User {
    var id:Int
    var name:String
    var status:String
    
    init(id: Int, name:String, status:String) {
        self.id = id
        self.name = name
        self.status = status
    }
}
