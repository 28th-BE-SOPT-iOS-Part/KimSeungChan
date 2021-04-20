//
//  SecondViewController.swift
//  KaKaoClone
//
//  Created by 김승찬 on 2021/04/07.

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var loginLabel: UILabel!
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
            loginLabel.text = "\(message!)님 가입이 완료되었습니다."
        }
    }
    
    @IBAction func checkButton(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
   

}
}
