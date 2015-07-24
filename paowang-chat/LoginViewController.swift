//
//  LoginViewController.swift
//  paowang-chat
//
//  Created by Derek Stallone on 7/24/15.
//  Copyright (c) 2015 Derek Stallone. All rights reserved.
//

import Foundation
import UIKit
import Firebase


class LoginViewController:UIViewController {
    let ref: Firebase = Firebase(url:"https://pwj.firebaseio.com")
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        title = "PaoWang Chat"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func signIn() {
        if emailTextField.text != nil && passwordTextField.text != nil {
            ref.authUser(emailTextField.text, password: passwordTextField.text, withCompletionBlock: {
                error, authData in
                if error != nil {
                    // there was an error logging in to this account
                } else {
                    // we are now logged in
                }
            })
        }
        
        
    }
    
    
}