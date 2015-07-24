//
//  SignUpViewController.swift
//  paowang-chat
//
//  Created by Derek Stallone on 7/24/15.
//  Copyright (c) 2015 Derek Stallone. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class SignUpViewController : UIViewController {

    let ref = Firebase(url:"https://pwj.firebaseio.com")
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        title = "新用户注册"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func signUp() {
        if emailTextField.text != nil && passwordTextField.text != nil {
            ref.createUser(emailTextField.text, password: passwordTextField.text, withValueCompletionBlock: {
                error, result in
                if error != nil {
                    // There was an error creating the account
                } else {
                    let uid = result["uid"] as? String
                    println("Successfully created user account with uid \(uid)")
                    
                }
            })
        }
        dismissViewControllerAnimated(true, completion: nil)
            
    }
    
}


