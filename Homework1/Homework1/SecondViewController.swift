//
//  SecondViewController.swift
//  Homework1
//
//  Created by 김승찬 on 2021/04/03.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var message : String?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setLabel()
    // Do any additional setup after loading the view.
    }
    
    func setLabel()
    {
        if self.message != nil
        {
            nameLabel.text = "\(message!)님 가입이 완료되었습니다."
        }
        
        
    }

    @IBAction func sureButton(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)

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
