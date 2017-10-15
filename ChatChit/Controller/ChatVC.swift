//
//  chatVC.swift
//  ChatChit
//
//  Created by PoGo on 10/14/17.
//  Copyright © 2017 PoGo. All rights reserved.
//

import UIKit
import Firebase

class ChatVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func logoutButtonPressed(_ sender: Any) {
        
        sigout()
        
        print(Auth.auth().currentUser)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        appDelegate.window?.rootViewController = loginVC
        
    }
    
    func sigout(){
        do{
            try Auth.auth().signOut()
        } catch{
            print(error)
        }
        
    }

}
