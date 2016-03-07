//
//  Header.swift
//  piece
//
//  Created by cieldon on 16/2/8.
//  Copyright © 2016年 ___carly___. All rights reserved.
//

import UIKit
import SnapKit

class Header: UIViewController {
    var nav: UINavigationBar!
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nav = UINavigationBar()
        nav.barTintColor = UIColor(red: 2/255, green: 193/255, blue: 73/255, alpha: 1.0)
        nav.barStyle = .Black
        view.addSubview(nav)
        nav.snp_updateConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(0)
            make.left.equalTo(view).offset(0)
            make.right.equalTo(view).offset(0)
            make.height.equalTo(64)
        }
        let navItem = UINavigationItem()
        navItem.title = "Piece"
        nav.setItems([navItem], animated: false)
    }
    
}

