//
//  SettingsViewController.swift
//  theBanker
//
//  Created by MN on 07.01.2022.
//  Copyright © 2022 SmartHub. All rights reserved.
//

import UIKit
import Firebase

class SettingsViewController: UIViewController {

    @IBOutlet weak var welcomeInLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        self.navigationItem.hidesBackButton = true
        self.navigationItem.hidesBackButton = true
        self.navigationItem.hidesBackButton = true
        self.navigationItem.hidesBackButton = true
        self.navigationItem.hidesBackButton = true
        self.navigationItem.hidesBackButton = true
        self.navigationItem.hidesBackButton = true
        self.navigationItem.hidesBackButton = true
        
        let defaults = UserDefaults.standard
        
        Service.getUserInfo(onSuccess: {
            self.welcomeInLabel.text = "Welcome in \(defaults.string(forKey: "userNameKey")!)"
        }) { (error) in
            self.present(Service.createAlertController(title: "Error", message: error!.localizedDescription), animated: true, completion: nil)
        }
       
        
        
    
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func LogOutButton(_ sender: Any) {
        func logoutUser() {
            // call from any screen
            
            do { try Auth.auth().signOut() }
            catch { print("already logged out") }
            
            navigationController?.popToRootViewController(animated: true)
        }
        
        
        
        
    }
    
    @IBAction func LogOut(_ sender: Any) {
    
        try! Auth.auth().signOut()

        if let storyboard = self.storyboard {
                    let vc = storyboard.instantiateViewController(withIdentifier: "WelcomeViewController") as! UINavigationController
                    self.present(vc, animated: false, completion: nil)
                }
        }
        
        
        
        /*  let auth = Auth.auth()
        
        do {
            try auth.signOut()
            let defaults = UserDefaults.standard
            defaults.set(false, forKey: "isUserSignedIn")
            self.dismiss(animated: true, completion: nil)
        } catch let signOutError {
            self.present(Service.createAlertController(title: "Error", message: signOutError.localizedDescription), animated: true, completion: nil)
        }*/
    }
    

