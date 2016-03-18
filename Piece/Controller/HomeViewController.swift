//
//  HomeViewController.swift
//  Piece
//
//  Created by cieldon on 16/3/17.
//  Copyright © 2016年 cieldon. All rights reserved.
//

import UIKit
import SnapKit
class HomeViewController: UIViewController{
    var wordList: WordTableView!
    var nav: UINavigationController!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()
        self.title = "Piece"
        nav = self.navigationController
        let add = UIBarButtonItem(title: "Add", style: .Done, target: self, action: "addWord:")
        self.navigationItem.setRightBarButtonItem(add, animated: false)
        wordList = WordTableView(style: .Plain, nav: nav)
        view.addSubview(wordList.view)
        wordList.view.snp_makeConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(64)
            make.left.right.bottom.equalTo(view).offset(0)
        }
    }
    
    func addWord(btn:UIBarButtonItem){
        nav.pushViewController(EditWordViewController(id: nil), animated: false)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}