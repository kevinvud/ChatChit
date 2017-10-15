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

class Helper{
    
    static let helper = Helper()
    
    func loginAnonymously(){
        // Anonymously log user in
        
        Auth.auth().signInAnonymously { (anonymoustUser, error) in
            if error == nil{
                print("UserId: \(String(describing: anonymoustUser?.uid))")
                
                // Switch view by setting navigation controller as root VC
                
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                
                let naviVC = storyboard.instantiateViewController(withIdentifier: "navigationVC") as! UINavigationController
                
                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                
                appDelegate.window?.rootViewController = naviVC
                
            }else{
                debugPrint(error!)
            }
        }
    
    }
}
