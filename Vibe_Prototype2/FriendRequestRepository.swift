//
//  FriendRequestRepository.swift
//  Vibe_Prototype2
//
//  Created by Benjamin Liu on 11/28/17.
//  Copyright © 2017 Danny Shin. All rights reserved.
//

import Foundation
import FirebaseDatabase
import Firebase


class FriendRequestRepository {
    
    var ref: DatabaseReference!
    
    init() {
        self.ref = Database.database().reference(withPath: "friend-requests")
    }
    
    func post(friendRequest: FriendRequest) -> String {
        let databaseRef = self.ref.childByAutoId()
        let setRequested = databaseRef.child("requestedId")
        setRequested.setValue(friendRequest.requestedId)
        let setRequestor = databaseRef.child("requestorId")
        setRequestor.setValue(friendRequest.requestorId)
        
        return databaseRef.key
    }
    
    
    
    
    
}
