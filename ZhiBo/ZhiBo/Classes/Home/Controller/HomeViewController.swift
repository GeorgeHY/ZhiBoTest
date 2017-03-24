//
//  HomeViewController.swift
//  ZhiBo
//
//  Created by 韩扬 on 2017/3/24.
//  Copyright © 2017年 HanYang. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
  

}


extension HomeViewController {
    fileprivate func setupUI(){
        setupNavigationBar()
    }
    
    fileprivate func setupNavigationBar(){
        
        //设置左侧的logo
        let btn = UIButton()
        btn.setImage(UIImage(named:""), for: .normal)
        btn.sizeToFit()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: btn)
        
        //设置右侧的Item
        let  size = CGSize(width: 40, height: 40)
        
        let historyBtn = UIButton()
        historyBtn.setImage(UIImage(named:""), for: .normal)
        historyBtn.setImage(UIImage(named:""), for: .highlighted)
        historyBtn.frame = CGRect(origin: CGPoint.zero, size: size)
        let historyItem = UIBarButtonItem(customView: historyBtn)
        
        let searchBtn = UIButton()
        searchBtn.setImage(UIImage(named:""), for: .normal)
        searchBtn.setImage(UIImage(named:""), for: .highlighted)
        searchBtn.frame = CGRect(origin: CGPoint.zero, size: size)
        let searchItem = UIBarButtonItem(customView: searchBtn)
        
        let qrcodeBtn = UIButton()
        qrcodeBtn.setImage(UIImage(named:""), for: .normal)
        qrcodeBtn.setImage(UIImage(named:""), for: .highlighted)
        qrcodeBtn.frame = CGRect(origin: CGPoint.zero, size: size)
        let qrcodeItem = UIBarButtonItem(customView: qrcodeBtn)
        
        
        
        navigationItem.rightBarButtonItems = [historyItem,searchItem,qrcodeItem]
    }
}
