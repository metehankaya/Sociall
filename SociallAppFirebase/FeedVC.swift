//
//  FirstViewController.swift
//  SociallAppFirebase
//
//  Created by Metehan Kaya on 20.02.2019.
//  Copyright © 2019 Metehan Kaya. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class FirstViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }

//
// Çıkış işlemleri
//
    
    @IBAction func logoutClicked(_ sender: Any) {
        
        UserDefaults.standard.removeObject(forKey: "user")
        UserDefaults.standard.synchronize()
        
        let signIn = self.storyboard?.instantiateViewController(withIdentifier: "signIn") as! SignInVC
        let delegate : AppDelegate = UIApplication.shared.delegate as! AppDelegate
        delegate.window?.rootViewController = signIn
        delegate.remeberUser()
        
        do {
            try Auth.auth().signOut()
        } catch {
            print(error)
        }
    }
}

