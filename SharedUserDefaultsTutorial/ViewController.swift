//
//  ViewController.swift
//  SharedUserDefaultsTutorial
//
//  Created by Alex Nagy on 19/12/2018.
//  Copyright © 2018 Alex Nagy. All rights reserved.
//

import UIKit

let sharedUserDefaults = UserDefaults(suiteName: SharedUserDefaults.suiteName)

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let username = "Alex"
        
//        UserDefaults.standard.set(username, forKey: SharedUserDefaults.Keys.username)
        
//        guard let savedUsername = UserDefaults.standard.string(forKey: SharedUserDefaults.Keys.username) else { return }
//        print("Username: \(savedUsername)")
        
        sharedUserDefaults?.set(username, forKey: SharedUserDefaults.Keys.username)
        guard let sharedUsername = sharedUserDefaults?.string(forKey: SharedUserDefaults.Keys.username) else { return }
        print("Shared username: \(sharedUsername)")
    }


}

