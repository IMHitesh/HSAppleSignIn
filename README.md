# HSAppleSignIn
SignIn with Apple and Signup with demo : Swift


Add AppleSignIn folder into your project.



Enable SignIn with Apple in Capablities.



Goto your UIViewController and Add Container view for SignIn with apple.



Call loginWithApple function:


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
            
            
If everything is proper then you will received the all user info.                      
