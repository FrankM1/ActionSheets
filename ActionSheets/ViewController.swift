//
//  ViewController.swift
//  ActionSheets
//
//  Created by Frank on 11/21/18.
//  Copyright © 2018 Qazana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var alertController: UIAlertController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alertController = UIAlertController(title: "Send me vai?", message: "You can send via email or iMessage", preferredStyle: UIAlertController.Style.actionSheet )
        
        let emailAction = UIAlertAction(title: "Email", style: UIAlertAction.Style.default ) { (action) -> Void in
            print("send the file via email")
        }
        
        let imessageAction = UIAlertAction(title: "iMessage", style: UIAlertAction.Style.default ) { (action) -> Void in
            print("send the file via iMessage")
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.destructive ) { (action) -> Void in
            print("action sheet was cancelled")
        }
        
        alertController.addAction(emailAction)
        alertController.addAction(imessageAction)
        alertController.addAction(cancelAction)

    }

    @IBAction func showActionSheet(_ sender: Any) {
        self.present(alertController, animated: true, completion: nil)
    }
    
}

