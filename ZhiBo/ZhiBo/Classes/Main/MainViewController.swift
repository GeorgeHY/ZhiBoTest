//
//  MainViewController.swift
//  ZhiBo
//
//  Created by 韩扬 on 2017/3/24.
//  Copyright © 2017年 HanYang. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildVC(storyBoardName: "Home")
        addChildVC(storyBoardName: "Live")
        addChildVC(storyBoardName: "Follow")
        addChildVC(storyBoardName: "Discovery")
        addChildVC(storyBoardName: "Profile")
        

    }
    
    private func addChildVC(storyBoardName : String)
    {
        let childVC = UIStoryboard(name: storyBoardName, bundle: nil).instantiateInitialViewController()!
        addChildViewController(childVC)
    }

}
