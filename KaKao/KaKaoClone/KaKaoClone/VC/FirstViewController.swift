//
//  FirstViewController.swift
//  KaKaoClone
//
//  Created by 김승찬 on 2021/04/07.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var login2TextField: UITextField!
    @IBOutlet weak var password1TextField: UITextField!
    @IBOutlet weak var password2TextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func newlogin2Button(_ sender: UIButton) {
        
        if login2TextField.text != "" && password1TextField.text != "" && password2TextField.text != ""
        { return
        
        }
        
        self.makeRequestAlert(title: "알림",
                                      message: "회원가입 하시겠습니까요?",
                                      okAction: {
                                        _ in self.signupAction()
                                        
                                      })
      //  guard let nextVC =
        //        self.storyboard?.instantiateViewController(identifier: "MainTabBarController")
          //      as? MainTabBarController else { return }
        
         //nextVC.message = login2TextField.text!
        
            //self.navigationController?
              //  .pushViewController(nextVC, animated: true)
            
            //self.navigationItem.backBarButtonItem?.title = ""


        
            //self.navigationController?.popViewController(animated: true)
            
        
        
    }
    func signupAction()
            {
            SignupService.shared.Signup(email: self.login2TextField.text!, password: self.password1TextField.text!) { result in
                switch result
                {
                case .success(let message):
                        
                if let message = message as? String{
                            
                            self.makeAlert(title: "알림",
                                           message: message)

                        }
                        
                    case .requestErr(let message):
                        
                        if let message = message as? String{
                            
                            self.makeAlert(title: "알림",
                                      message: message)
                        }
                                   
                        
                    default :
                        print("ERROR")
                    }
                }
            }
}
