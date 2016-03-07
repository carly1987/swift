//
//  Nav.swift
//  2
//
//  Created by cieldon on 16/3/7.
//  Copyright © 2016年 cieldon. All rights reserved.
//

import UIKit
import SnapKit
class Nav:UIViewController{
    var navBar: UINavigationBar!
    var Top: CGFloat!
    var BarStyle: UIBarStyle!
    init(top: CGFloat!, barStyle: UIBarStyle!) {
        super.init(nibName: nil, bundle: nil)
        Top = top
        BarStyle = barStyle
    }
    required init?(coder aDecoder: NSCoder) {
        //        fatalError("init(coder:) has not been implemented")
        super.init(coder:aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print(Top)
        
        navBar = UINavigationBar()
        navBar.barStyle = BarStyle
//        navBar.translucent = false
        navBar.tintColor = UIColor.redColor()
        view.addSubview(navBar)
        navBar.snp_makeConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(Top)
            make.left.equalTo(view).offset(0)
            make.right.equalTo(view).offset(0)
            make.height.equalTo(64)
        }
        
        let navItem = UINavigationItem()
        navItem.title = "haha"
        navBar.setItems([navItem], animated: false)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
