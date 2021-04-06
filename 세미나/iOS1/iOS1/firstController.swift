//
//  firstController.swift
//  iOS1
//
//  Created by 김승찬 on 2021/04/03.
//

import UIKit

class firstController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func changeButtonClicked(_ sender: UIButton) {
        
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "secondController")
                as? secondController else { return }
        
        nextVC.message = textField.text

        self.navigationController?
            .pushViewController(nextVC, animated: true)
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
