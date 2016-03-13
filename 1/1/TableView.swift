//
//  TableView.swift
//  1
//
//  Created by cieldon on 16/1/13.
//  Copyright © 2016年 cieldon. All rights reserved.
//

import UIKit
import SnapKit
class TableView: UIViewController{
    var tableview : TableViewController!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview = TableViewController(style: .Plain)
        view.addSubview(tableview.view)
        tableview.view.snp_makeConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(0)
            make.left.equalTo(view).offset(0)
            make.right.equalTo(view).offset(0)
            make.bottom.equalTo(view).offset(0)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
