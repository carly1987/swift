//
//  ViewController.swift
//  2
//
//  Created by cieldon on 16/3/7.
//  Copyright © 2016年 cieldon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var nav1: Nav!
    var nav2: Nav!
    override func viewDidLoad() {
        super.viewDidLoad()
        nav1 = Nav(top:0, barStyle:.Black)
        nav2 = Nav(top:74, barStyle:.BlackTranslucent)
        view.addSubview(nav1.view)
        view.addSubview(nav2.view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

