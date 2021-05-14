//
//  FiveCollectionViewCell.swift
//  KaKaoClone
//
//  Created by 김승찬 on 2021/05/07.
//

import UIKit

class FiveCollectionViewCell: UICollectionViewCell {
    
    static let identifier : String = "FiveCollectionViewCell"
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var profileListLabel: UILabel!
    
    func setData(imageName: String, listLabel: String)
    {
        if let image = UIImage(named: imageName)
        {
            imageView.image = image
        }
        profileListLabel.text = listLabel
    }
}
