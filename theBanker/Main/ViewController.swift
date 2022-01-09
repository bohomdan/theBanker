//
//  ViewController.swift
//  theBanker
//
//  Created by Bohdan on 04.01.2022.
//  Copyright © 2022 SmartHub. All rights reserved.
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "Tabbar", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "Tabbar")
        self.navigationController?.pushViewController(vc, animated: false)
        self.navigationItem.hidesBackButton = true
        self.navigationItem.hidesBackButton = true
        self.navigationItem.hidesBackButton = true
        self.navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view.
    }


}

