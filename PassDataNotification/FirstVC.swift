//
//  ViewController.swift
//  PassDataNotification
//
//  Created by Luyen on 10/18/17.
//  Copyright © 2017 Luyen. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backBarButtonItem = UIBarButtonItem(title: " ", style: .plain, target: nil, action: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(getDataVC2(notification:)),
                                               name: Notification.Name(rawValue: "mynotification"),
                                               object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @objc func getDataVC2(notification: Notification) {
        if let message = notification.userInfo {
            if let msg = message["message"] as? String {
                self.textLabel.text = msg
            }
        }
    }

}

