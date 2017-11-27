//
//  MainViewController.swift
//  Vibe_Prototype2
//
//  Created by Benjamin Liu on 11/27/17.
//  Copyright © 2017 Danny Shin. All rights reserved.
//

import UIKit
import FirebaseAuth

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (Auth.auth().currentUser != nil) {
            loadMainView()
        } else {
            loadLoginView()
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadMainView() {
        let mainView = self.storyboard!.instantiateViewController(withIdentifier: "DiscoverNavigationViewController")
        self.addChildViewController(mainView)
        mainView.didMove(toParentViewController: self)
    }
    
    func loadLoginView() {
        let loginView = self.storyboard!.instantiateViewController(withIdentifier: "LoginViewController")
        self.addChildViewController(loginView)
        loginView.didMove(toParentViewController: self)
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
