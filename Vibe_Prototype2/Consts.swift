//
//  Consts.swift
//  Vibe_Prototype2
//
//  Created by Danny Shin on 11/20/17.
//  Copyright © 2017 Danny Shin. All rights reserved.
//

import Foundation


class Const {
    
    static let users = [User(key: "1", name: "Alice", status: "Happy"), User(key: "2", name: "Bob", status: "Sad"), User(key: "3", name: "Chloe", status: "Tepid")]
    
    static let friendRequests = [FriendRequest(key: "foobar", requestorId: "1", requestedId: "2")]
    
    init() {
        
    }
    
    class func getNearbyUsers() -> Array<User>{
        return users
    }
    
    class func getFriendRequests() -> Array<FriendRequest> {
        return friendRequests
    }
    
}
