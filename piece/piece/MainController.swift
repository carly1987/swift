//
//  MainController.swift
//  piece
//
//  Created by cieldon on 16/2/8.
//  Copyright © 2016年 ___carly___. All rights reserved.
//

import UIKit
import SnapKit
class MainController: UIViewController{
    var header : Header!
    var list : List!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 45/255, green: 45/255, blue: 45/255, alpha: 1.0)
        //header
        header = Header()
        view.addSubview(header.view)
        
        //list
        list = List(header: header)
        view.addSubview(list.view)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
}
