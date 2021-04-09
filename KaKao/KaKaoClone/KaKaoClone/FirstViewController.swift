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
        {
        guard let nextVC =
                self.storyboard?.instantiateViewController(identifier: "SecondViewController")
                as? SecondViewController else { return }
        
        nextVC.message = login2TextField.text!
        
        self.present(nextVC, animated: true, completion: nil)
        
            self.navigationController?.popViewController(animated: true)
            
        }
        
    }
    
    /* s
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
