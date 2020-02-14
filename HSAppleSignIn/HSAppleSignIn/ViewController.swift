//
//  ViewController.swift
//  HSAppleSignIn
//
//  Created by Hitesh Surani on 14/02/20.
//  Copyright © 2020 Hitesh Surani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewAppleButton: UIView!
    let appleSignIn = HSAppleSignIn()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addSignInWithAppleButton()
    }

    fileprivate func addSignInWithAppleButton(){
            
            if #available(iOS 13.0, *) {
                
                appleSignIn.loginWithApple(view:viewAppleButton, completionBlock: { (userInfo, message) in
                    if let userInfo = userInfo{
                        print(userInfo.email)
                        print(userInfo.userid)
                        print(userInfo.firstName)
                        print(userInfo.lastName)
                        print(userInfo.fullName)
                    }else if let message = message{
                        print("Error Message: \(message)")
                    }else{
                        print("Unexpected error!")
                    }
                })
            }else{
                viewAppleButton.isHidden = true
            }
    }

}

