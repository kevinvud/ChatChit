//
//  Helper.swift
//  ChatChit
//
//  Created by PoGo on 10/15/17.
//  Copyright © 2017 PoGo. All rights reserved.
//

import Foundation
import Firebase
import UIKit
import GoogleSignIn

class Helper{
    
    static let instance = Helper()
    
    func loginAnonymously(){
        // Anonymously log user in
        
        Auth.auth().signInAnonymously { (anonymoustUser, error) in
            if error == nil{
                print("UserId: \(String(describing: anonymoustUser?.uid))")
                self.switchToNavController()
            }
            else{
                    debugPrint(error!)
                }
                // Switch view by setting navigation controller as root VC

        }
    
    }
    
    func loginWithGoogle(authentication: GIDAuthentication){
        let credential = GoogleAuthProvider.credential(withIDToken: authentication.idToken, accessToken: authentication.accessToken)
        Auth.auth().signIn(with: credential) { ( user, error) in
            if error == nil{
                self.switchToNavController()
            }else{
                print(error!.localizedDescription)
               
            }
         
        }
    }
    
    func switchToNavController(){
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let naviVC = storyboard.instantiateViewController(withIdentifier: "navigationVC") as! UINavigationController
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        appDelegate.window?.rootViewController = naviVC
        
        }

}
