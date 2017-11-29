//
//  DiscoverUserViewController.swift
//  Vibe_Prototype2
//
//  Created by Benjamin Liu on 11/22/17.
//  Copyright © 2017 Danny Shin. All rights reserved.
//

import UIKit

class DiscoverUserViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    var users = [User]()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            users += Const.getNearbyUsers()
            print ("Discovering Users")
            
            tableView.delegate = self
            tableView.dataSource = self
        }
    
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return users.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cellId = "NearbyUserTableCell"
            print ("Rendering a cell")
            let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! NearbyUserTableViewCell;
            
            let user = users[indexPath.row]
            cell.userName?.text = user.name
            cell.userStatus?.text = user.status
            cell.parent = self
            return cell
        }
        
        func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: IndexPath) {
            // cell selected code here
            print ("Cell selected")
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
