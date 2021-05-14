//
//  FiveViewController.swift
//  KaKaoClone
//
//  Created by 김승찬 on 2021/05/06.
//

import UIKit

class FiveViewController: UIViewController {

    @IBOutlet weak var FiveCollectionView: UICollectionView!
    
    private var fiveList : [FiveDataModel] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setFiveList()
        FiveCollectionView.delegate = self
        FiveCollectionView.dataSource = self
       
    }
    
    func setFiveList()
    {
        fiveList.append(contentsOf: [FiveDataModel(profileName: "messageTabIcon", coverName: "메일"),
        FiveDataModel(profileName: "messageTabIcon", coverName: "캘린더"),
        FiveDataModel(profileName: "messageTabIcon", coverName: "서랍"),
        FiveDataModel(profileName: "messageTabIcon", coverName: "카카오콘"),
        FiveDataModel(profileName: "messageTabIcon", coverName: "메이커스"),
        FiveDataModel(profileName: "messageTabIcon", coverName: "선물하기"),
        FiveDataModel(profileName: "messageTabIcon", coverName: "이모티콘"),
        FiveDataModel(profileName: "messageTabIcon", coverName: "프렌즈"),
        FiveDataModel(profileName: "messageTabIcon", coverName: "쇼핑하기"),
        FiveDataModel(profileName: "messageTabIcon", coverName: "스타일"),
        FiveDataModel(profileName: "messageTabIcon", coverName: "주문하기"),
        FiveDataModel(profileName: "messageTabIcon", coverName: "멜론티켓"),
        FiveDataModel(profileName: "messageTabIcon", coverName: "게임"),
        FiveDataModel(profileName: "messageTabIcon", coverName: "멜론"),
        FiveDataModel(profileName: "messageTabIcon", coverName: "헤어샵"),
        FiveDataModel(profileName: "messageTabIcon", coverName: "전체서비스") ])
    }
    
}

extension FiveViewController :
    UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fiveList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let fiveCell = collectionView.dequeueReusableCell(withReuseIdentifier: FiveCollectionViewCell.identifier, for: indexPath)
        as? FiveCollectionViewCell
        else {return UICollectionViewCell()}
        
        fiveCell.setData(imageName: fiveList[indexPath.row].profileName, listLabel: fiveList[indexPath.row].coverName)
        return fiveCell
        
    }
    
}   
extension FiveViewController :
    UICollectionViewDelegate
{
    
}
extension FiveViewController :
    UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        let width = UIScreen.main.bounds.width
        
        let cellWidth = width * (80 / 414)
        let cellHeight = cellWidth * (80 / 80)
        return CGSize(width: cellWidth, height: cellHeight)
}
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }

func collectionView(_ collectionView: UICollectionView, layout collectionViewlayout: UICollectionViewLayout,minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return 5
}

func collectionView(_ collectionView: UICollectionView, layout collectionViewlayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt sectionAt : Int) -> CGFloat {
    return 3
}

}


