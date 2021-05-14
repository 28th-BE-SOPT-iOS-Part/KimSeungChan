//
//  FirstTableViewCell.swift
//  KaKaoClone
//
//  Created by 김승찬 on 2021/05/01.
//

import UIKit

class FirstTableViewCell: UITableViewCell {
    
    static let identifier : String = "FirstTableViewCell"
    
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var profileMessage: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

        override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(imageName : String, title : String, subtitle : String)
    {
        if let image = UIImage(named : imageName)
        {
            profileImageView.image = image
        }
        profileName.text = title
        profileMessage.text = subtitle
    }

}
