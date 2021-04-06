//
//  secondController.swift
//  iOS1
//
//  Created by 김승찬 on 2021/04/03.
//

import UIKit

class secondController: UIViewController {
    @IBOutlet weak var meesageLabel: UILabel!
    
    var message : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setLabel()
        // Do any additional setup after loading the view.
    }
    
    func setLabel()
    {
        if let msg = self.message
        {
            meesageLabel.text = msg
        }
    }
    
    @IBAction func secondButtonClicked(_ sender: UIButton) {
        
        //self.dismiss(animated: true, completion: nil)
        
        self.navigationController?.popViewController(animated: true)
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
