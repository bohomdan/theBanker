//
//  SettingsViewController.swift
//  theBanker
//
//  Created by MN on 07.01.2022.
//  Copyright © 2022 SmartHub. All rights reserved.
//

import UIKit
import Firebase

class ForgotPassViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func forgotPassButton_Tapped(_ sender: Any) {
        let auth = Auth.auth()
        
        auth.sendPasswordReset(withEmail: emailField.text!) { (error) in
            if let error = error {
                let alert = Service.createAlertController(title: "Error", message: error.localizedDescription)
                self.present(alert, animated: true, completion: nil)
                return
            }
            
            let alert = Service.createAlertController(title: "Hurray", message: "A password reset email has been sent!")
            self.present(alert, animated: true, completion: nil)
        }
    }

}
