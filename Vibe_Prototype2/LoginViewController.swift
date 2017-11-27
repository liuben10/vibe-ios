//
//  LoginViewController.swift
//  Vibe_Prototype2
//
//  Created by Benjamin Liu on 11/21/17.
//  Copyright © 2017 Danny Shin. All rights reserved.
//

import UIKit

import FacebookLogin
import FBSDKLoginKit
import Firebase
import FirebaseAuth


class LoginViewController: UIViewController, LoginButtonDelegate {
    var dict : [String : AnyObject]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if Auth.auth().currentUser != nil {
            print("User is currently logged in")
        } else {
            //User Not logged in
        }
        
        let loginButton = LoginButton(readPermissions: [ .publicProfile ])
        loginButton.center = view.center
        loginButton.delegate = self
        
        view.addSubview(loginButton)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //function is fetching the user data
    func getFBUserData(){
        if((FBSDKAccessToken.current()) != nil){
            FBSDKGraphRequest(graphPath: "me", parameters: ["fields": "id, name, picture.type(large), email"]).start(completionHandler: { (connection, result, error) -> Void in
                if (error == nil){
                    self.dict = result as! [String : AnyObject]
                    print(result!)
                    print(self.dict)
                }
            })
        }
    }
    
    func loginButtonDidCompleteLogin(_ loginButton: LoginButton, result: LoginResult) {
        switch result {
        case .failed(let error):
            print(error)
            self.performSegue(withIdentifier: "loginFailed", sender: nil)
        case .success(let grantedPermissions, let declinedPermissions, let accessToken):
            self.getFBUserData()
            let credential = FacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
            Auth.auth().signIn(with: credential) { (user, error) in
                if let error = error {
                    print("Error=" + String(describing: error))
                    return
                }
            }
        case .cancelled:
            self.performSegue(withIdentifier: "loginFailed", sender: nil)
            print("User cancelled login.")
        default:
            print("Dont know what happened")
        }
    }
    
    func loginButtonDidLogOut(_ loginButton: LoginButton) {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            print("Logged out")
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
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
