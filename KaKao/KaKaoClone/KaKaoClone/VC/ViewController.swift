//
//  ViewController.swift
//  KaKaoClone
//
//  Created by 김승찬 on 2021/04/07.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    @IBOutlet weak var loginornumberField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    @IBAction func loginButton(_ sender: UIButton) {
    
        if loginornumberField.text != "" && passwordTextField.text != ""
        { return
            
            
        }
        
        
        self.makeRequestAlert(title: "알림",
                                     message: "로그인 하시겠습니까요?",
                                     okAction: {
                                       _ in self.loginAction()
                                        
                                     })
            //guard let nextVC =
              //      self.storyboard?.instantiateViewController(identifier: "MainTabBarController")
                //    as? MainTabBarController else { return }
            
           // self.navigationController?
             //   .pushViewController(nextVC, animated: true)
            
            //self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.plain, target:nil, action:nil)

            
                                    
    }

        @IBAction func newloginButton(_ sender: UIButton) {
        
        guard let nextVC =
                self.storyboard?.instantiateViewController(withIdentifier: "FirstViewController") else { return }
        
        self.navigationController?
            .pushViewController(nextVC, animated: true)
    }
        
        func loginAction()
               {
               LoginService.shared.login(email: self.loginornumberField.text!, password: self.passwordTextField.text!) { result in
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


