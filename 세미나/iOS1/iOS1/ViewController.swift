//
//  ViewController.swift
//  iOS1
//
//  Created by 김승찬 on 2021/04/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var nameTextFieeld: UITextField!
    @IBOutlet weak var numberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }

    @IBAction func button(_ sender: Any) {
        var userName = ""
        
        if let name = nameTextFieeld.text{
            userName = name
            
        }
        var userNumber = ""

        if let number = numberTextField.text{
            userNumber = number
        
        }
        
        titleLabel.text = "\(userName) 의 번호는 \(userNumber)"
        
    }
    
}

