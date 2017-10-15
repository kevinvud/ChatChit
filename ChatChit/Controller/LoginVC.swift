//
//  ViewController.swift
//  ChatChit
//
//  Created by PoGo on 10/14/17.
//  Copyright © 2017 PoGo. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn

class LoginVC: UIViewController, GIDSignInUIDelegate, GIDSignInDelegate {

    @IBOutlet weak var loginAnonymouslyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        loginAnonymouslyButton.layer.borderWidth = 1.0
        loginAnonymouslyButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        GIDSignIn.sharedInstance().clientID = "116266352423-aqrdfk2p8u4kb4c65bgi1ebcgbrurark.apps.googleusercontent.com"
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().delegate = self

        
    }
    @IBAction func loginAnonymously(_ sender: Any) {
       
        Helper.instance.loginAnonymously()
  
    }
    
    @IBAction func googleLoginPressed(_ sender: Any) {
        GIDSignIn.sharedInstance().signIn()
       
        
        
        
    }

    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        if error == nil{
            print(user.authentication)
            Helper.instance.loginWithGoogle(authentication: user.authentication)
        } else{
            debugPrint(error!)
        }
        
    }

}

