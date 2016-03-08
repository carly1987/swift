//
//  AnotherView.swift
//  1
//
//  Created by cieldon on 16/1/14.
//  Copyright © 2016年 cieldon. All rights reserved.
//

import UIKit
import SnapKit
class AnotherView : UIViewController{
    var nav : UINavigationBar!
    var text : UITextView!
    var PrevData : String!
    init(data:String!) {
        super.init(nibName: nil, bundle: nil)
        PrevData = data
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder : aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()
        
        //nav
        nav = UINavigationBar()
        nav.barStyle = .Default
        view.addSubview(nav)
        nav.snp_makeConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(0)
            make.left.equalTo(view).offset(0)
            make.right.equalTo(view).offset(0)
            make.height.equalTo(64)
        }
        let navItem = UINavigationItem()
        navItem.title = "Second"
        let back = UIBarButtonItem(title: "First", style: .Done, target: self, action: "first:")
        navItem.setLeftBarButtonItem(back, animated: false)
        nav.setItems([navItem], animated: false)
        
        //text
        text = UITextView()
        text.text = PrevData
        view.addSubview(text)
        text.snp_makeConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(64)
            make.left.equalTo(view).offset(0)
            make.right.equalTo(view).offset(0)
            make.bottom.equalTo(view).offset(0)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func first(btn:UIBarButtonItem){
        self.presentViewController(PassingDataToAnotherView(),animated: false, completion: nil)
    }
}
