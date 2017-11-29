//
//  FriendRequest.swift
//  Vibe_Prototype2
//
//  Created by Danny Shin on 11/20/17.
//  Copyright © 2017 Danny Shin. All rights reserved.
//

import Foundation

import FirebaseDatabase


class FriendRequest {
    var key: String
    var requestorId: String
    var requestedId: String
    let ref: DatabaseReference?
    
    init(key: String, requestorId: String, requestedId: String) {
        self.requestorId = requestorId
        self.requestedId = requestedId
        self.ref = nil
        self.key = key
    }
}
