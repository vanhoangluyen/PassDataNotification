//
//  SecondVC.swift
//  PassDataNotification
//
//  Created by Luyen on 10/18/17.
//  Copyright © 2017 Luyen. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    @IBOutlet weak var textFieldVC2: UITextField!
    @IBAction func sendBackData(_ sender: UIButton) {
        //post notification
        NotificationCenter.default.post(name: Notification.Name(rawValue: "mynotification"), object: nil, userInfo: ["message": textFieldVC2.text ?? ""])
        navigationController?.popViewController(animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
