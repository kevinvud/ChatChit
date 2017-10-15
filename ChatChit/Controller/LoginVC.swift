//
//  ViewController.swift
//  ChatChit
//
//  Created by PoGo on 10/14/17.
//  Copyright © 2017 PoGo. All rights reserved.
//

import UIKit
import Firebase

class LoginVC: UIViewController {

    @IBOutlet weak var loginAnonymouslyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        loginAnonymouslyButton.layer.borderWidth = 1.0
        loginAnonymouslyButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
    }
    @IBAction func loginAnonymously(_ sender: Any) {
       
        Helper.helper.loginAnonymously()
  
    }
    
    @IBAction func googleLoginPressed(_ sender: Any) {
        
        
        
    }


}

