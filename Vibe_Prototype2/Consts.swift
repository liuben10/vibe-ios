//
//  Consts.swift
//  Vibe_Prototype2
//
//  Created by Danny Shin on 11/20/17.
//  Copyright © 2017 Danny Shin. All rights reserved.
//

import Foundation


class Const {
    
    static let users = [User(id: 1, name: "Alice", status: "Happy"), User(id: 2, name: "Bob", status: "Sad"), User(id: 3, name: "Chloe", status: "Tepid")]
    
    static let friendRequests = [FriendRequest(requestorId: 1, friendId: 2)]
    
    init() {
        
    }
    
    class func getNearbyUsers() -> Array<User>{
        return users
    }
    
    class func getFriendRequests() -> Array<FriendRequest> {
        return friendRequests
    }
    
}
