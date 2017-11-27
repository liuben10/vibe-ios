//
//  DatabaseAccess.swift
//  Vibe_Prototype2
//
//  Created by Benjamin Liu on 11/27/17.
//  Copyright © 2017 Danny Shin. All rights reserved.
//

import Foundation
import Firebase


class DatabaseAccess {
    var tableName: String!
    var ref: DatabaseReference
    init(tableName: String) {
        self.tableName = tableName
        self.ref = Database.database().reference(withPath: tableName)
    }
    
}
