//
//  PassingDataToAnotherView.swift
//  1
//
//  Created by cieldon on 16/1/14.
//  Copyright © 2016年 cieldon. All rights reserved.
//

import UIKit
import SnapKit
class PassingDataToAnotherView: UIViewController, UITextViewDelegate{
    var nav : UINavigationBar!
    var textView : UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        navItem.title = "First"
        let done = UIBarButtonItem(title: "Done", style: .Done, target: self, action: "done:")
        navItem.setRightBarButtonItem(done, animated: false)
        nav.setItems([navItem], animated: false)
        
        //textView
        textView = UITextView()
        textView.delegate = self
        view.addSubview(textView)
        textView.snp_makeConstraints{ (make) -> Void in
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
    
    func done(btn:UIBarButtonItem){
//            let v = textView.text
//        self.presentViewController(AnotherView(data:v),animated: false, completion: nil)
        self.presentViewController(TableView(),animated: false, completion: nil)
    }
}
