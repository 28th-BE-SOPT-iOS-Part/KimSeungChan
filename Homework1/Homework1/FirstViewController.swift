//
//  FirstViewController.swift
//  Homework1
//
//  Created by 김승찬 on 2021/04/03.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var id2TextField: UITextField!
    @IBOutlet weak var password2TextField: UITextField!
    @IBOutlet weak var password3TextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func makeid2Button(_ sender: UIButton) {
        
        guard let nextVC =
                self.storyboard?.instantiateViewController(identifier: "SecondViewController")
                as? SecondViewController else { return }
        
        nextVC.message = id2TextField.text!
        
        self.present(nextVC, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
