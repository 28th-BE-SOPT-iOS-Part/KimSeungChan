//
//  Friend1ViewController.swift
//  KaKaoClone
//
//  Created by 김승찬 on 2021/04/16.
//

import UIKit

class Friend1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func personimageButton(_ sender: UIButton) {
        
        guard let nextVC =
                self.storyboard?.instantiateViewController(identifier: "Friend2ViewController")
                as? Friend2ViewController else { return }
        
        self.present(nextVC, animated: true, completion: nil)
        
    }
    
    
    /*// MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
