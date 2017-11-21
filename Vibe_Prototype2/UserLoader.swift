//
//  UserLoader.swift
//  Vibe_Prototype2
//
//  Created by Benjamin Liu on 11/21/17.
//  Copyright © 2017 Danny Shin. All rights reserved.
//

import Foundation


class UserLoader {
    
    func getUsers() -> Array<User> {
        return Const.getNearbyUsers();
    }
}
