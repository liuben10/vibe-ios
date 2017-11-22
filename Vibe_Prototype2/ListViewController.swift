//
//  ListViewController.swift
//  Vibe_Prototype2
//
//  Created by Benjamin Liu on 11/21/17.
//  Copyright © 2017 Danny Shin. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBAction func selectFriendRequests(_ sender: Any) {
    }
    @IBAction func selectNearbyUsers(_ sender: Any) {
    }
    @IBOutlet weak var tableView: UITableView!
    
    var users = [User]()
    var friendRequests = [User]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print ("Loading Listview Controller")
        
        self.tableView.register(NearbyTableViewCell.self, forCellReuseIdentifier: "groupcell")
        
        let loaded = loadNearbyUsers()
        users += loaded
        
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadNearbyUsers() -> Array<User> {
        return Const.getNearbyUsers()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count// your number of cell here
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // your cell coding
        print ("Rendering a cell")
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListViewTableCell", for: indexPath) as! NearbyTableViewCell;
        
        let user = users[indexPath.row]
        cell.name?.text = user.name
        cell.status?.text = user.status
        
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
