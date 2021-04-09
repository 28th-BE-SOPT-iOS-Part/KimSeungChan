//
//  ViewController.swift
//  KaKaoClone
//
//  Created by 김승찬 on 2021/04/07.
//

import UIKit

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
        {
            guard let nextVC =
                    self.storyboard?.instantiateViewController(identifier: "SecondViewController")
                    as? SecondViewController else { return }
            
            nextVC.message = loginornumberField.text!
            
            self.present(nextVC, animated: true, completion: nil)
        }        
        
    }
    
    @IBAction func newloginButton(_ sender: UIButton) {
        
        guard let nextVC =
                self.storyboard?.instantiateViewController(identifier: "FirstViewController")
                as? FirstViewController else { return }
        
        self.navigationController?
            .pushViewController(nextVC, animated: true)
    }
}

