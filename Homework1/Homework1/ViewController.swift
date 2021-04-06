//
//  ViewController.swift
//  Homework1
//
//  Created by 김승찬 on 2021/04/03.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func loginButton(_ sender: UIButton) {
        guard let nextVC =
                self.storyboard?.instantiateViewController(identifier: "SecondViewController")
                as? SecondViewController else { return }
        
        nextVC.message = idTextField.text!

        self.present(nextVC, animated: true, completion: nil)
    }
    
    @IBAction func makeidButton(_ sender: UIButton) {
        
        guard let nextVC =
                self.storyboard?.instantiateViewController(identifier: "FirstViewController")
                as? FirstViewController else { return }
        
        
        self.navigationController?
            .pushViewController(nextVC, animated: true)
    }

    
}
// guard let nextVC = self.presentingViewController else { return }
