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
        
        setFriendList()
        
        TableView.delegate = self
        TableView.dataSource = self
        TableView.separatorStyle = .none

    }
 //   @IBAction func nextViewButton(_ sender: Any) {
   //     guard let nextVC =
     //           self.storyboard?.instantiateViewController(identifier: "Friend2ViewController")
       //         as? Friend2ViewController else { return }
        
        //self.present(nextVC, animated: true, completion: nil)
   // }
    

    @IBOutlet weak var TableView: UITableView!
    
    var FriendList : [Friend1ListDataModel] = []
    
    func setFriendList()
    {
        FriendList.append(contentsOf: [
                            Friend1ListDataModel(profileImageName: "profileImage1", title: "안솝트", subtitle:
                                                    "배고파요"),
                            Friend1ListDataModel(profileImageName: "profileImage2", title: "최솝트", subtitle: "피곤해요"),
                            Friend1ListDataModel(profileImageName: "profileImage3", title: "정솝트", subtitle: "살려줘요"),
                            Friend1ListDataModel(profileImageName: "profileImage4", title: "이솝트", subtitle: "워우어~~"),
                            Friend1ListDataModel(profileImageName: "profileImage5", title: "유솝트", subtitle: "나는 상태메세지!"),
                            Friend1ListDataModel(profileImageName: "profileImage6", title: "박솝트", subtitle: "배고파요"),
                            Friend1ListDataModel(profileImageName: "profileImage7", title: "박솝트", subtitle: "배고파요"),
                            Friend1ListDataModel(profileImageName: "profileImage8", title: "박솝트", subtitle: "배고파요"),
                            Friend1ListDataModel(profileImageName: "profileImage9", title: "박솝트", subtitle: "배고파요"),
                            Friend1ListDataModel(profileImageName: "profileImage10", title: "박솝트", subtitle: "배고파요")])
    }
    
    @IBAction func personimageButton(_ sender: UIButton) {
        
        guard let nextVC =
                self.storyboard?.instantiateViewController(identifier: "Friend2ViewController")
                as? Friend2ViewController else { return }
        
        self.present(nextVC, animated: true, completion: nil)
        
    }
   
}


extension Friend1ViewController : UITableViewDelegate
{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}

extension Friend1ViewController : UITableViewDataSource
{
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return FriendList.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let tablecell = TableView.dequeueReusableCell(withIdentifier: FirstTableViewCell.identifier, for: indexPath) as? FirstTableViewCell else {return UITableViewCell() }
    
    tablecell.setData(imageName: FriendList[indexPath.row].profileImageName,
                      title: FriendList[indexPath.row].title,
                      subtitle: FriendList[indexPath.row].subtitle)
    
    return tablecell
}

}
