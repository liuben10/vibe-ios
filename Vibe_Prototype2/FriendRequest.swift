//
//  FriendRequest.swift
//  Vibe_Prototype2
//
//  Created by Danny Shin on 11/20/17.
//  Copyright © 2017 Danny Shin. All rights reserved.
//

import Foundation


class FriendRequest {
    var requestorId: Int
    var friendId: Int
    
    init(requestorId: Int, friendId: Int) {
        self.requestorId = requestorId
        self.friendId = friendId
    }
}
