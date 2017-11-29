//
//  FriendRequestViewController.swift
//  Vibe_Prototype2
//
//  Created by Benjamin Liu on 11/22/17.
//  Copyright © 2017 Danny Shin. All rights reserved.
//

import UIKit

class FriendRequestViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var friendRequests = [FriendRequest]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        friendRequests += Const.getFriendRequests()
        print("Loading friend requests")
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendRequests.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let friendRequestCellId = "FriendRequestCellId"
        let cell = tableView.dequeueReusableCell(withIdentifier: friendRequestCellId, for: indexPath) as! FriendRequestTableViewCell;
        
        let friendRequest = friendRequests[indexPath.row]
        
        cell.fromRequestId!.text = String(friendRequest.requestorId)
        cell.toRequestId!.text = String(friendRequest.requestedId)
        
        return cell
    }
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    
}
