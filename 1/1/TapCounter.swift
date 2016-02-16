//
//  TapCounter.swift
//  1
//
//  Created by cieldon on 16/1/8.
//  Copyright © 2016年 cieldon. All rights reserved.
//

import UIKit
import SnapKit
class TapCounter: UIViewController{
    var nav : UINavigationBar!
    var num : UILabel!
    var start : UIButton!
    var reset : UIButton!
    var hold : UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        let w = view.frame.width
        //nav
        nav = UINavigationBar()
        nav.barStyle = UIBarStyle.Default
        view.addSubview(nav)
        nav.snp_makeConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(0)
            make.left.equalTo(view).offset(0)
            make.right.equalTo(view).offset(0)
            make.width.equalTo(w)
            make.height.equalTo(64)
        }
        let navItem = UINavigationItem()
        navItem.title = "Counter"
        nav.setItems([navItem], animated: false)
        
        //num
        num = UILabel()
        num.textAlignment = NSTextAlignment.Center
        num.font = UIFont.monospacedDigitSystemFontOfSize(100, weight: 0)
        num.text = "0"
        view.addSubview(num)
        num.snp_makeConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(90)
            make.left.equalTo(view).offset(0)
            make.right.equalTo(view).offset(0)
            make.width.equalTo(w)
            make.height.equalTo(200)
        }
        
        //buttons
        start = UIButton()
        start.setTitle("start", forState: .Normal)
        start.setTitleColor(UIColor.blackColor(), forState: .Normal)
        start.setTitleColor(UIColor.blueColor(), forState: .Highlighted)
        reset = UIButton()
        reset.setTitle("reset", forState: .Normal)
        reset.setTitleColor(UIColor.blackColor(), forState: .Normal)
        reset.setTitleColor(UIColor.blueColor(), forState: .Highlighted)
        hold = UIButton()
        hold.setTitle("hold", forState: .Normal)
        hold.setTitleColor(UIColor.blackColor(), forState: .Normal)
        hold.setTitleColor(UIColor.blueColor(), forState: .Highlighted)
        view.addSubview(start)
        view.addSubview(reset)
        view.addSubview(hold)
        start.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(view).offset(300)
            make.left.equalTo(view).offset(30)
            make.width.equalTo(100)
            make.height.equalTo(30)
        }
        reset.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(view).offset(300)
            make.right.equalTo(view).offset(-30)
            make.width.equalTo(100)
            make.height.equalTo(30)
        }
        hold.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(view).offset(300)
            make.left.equalTo(view).offset(160)
            make.width.equalTo(100)
            make.height.equalTo(30)
        }
        
        start.addTarget(self, action: "start:", forControlEvents: .TouchUpInside)
        reset.addTarget(self, action: "reset:", forControlEvents: .TouchUpInside)
        let touch = UILongPressGestureRecognizer()
        hold.addGestureRecognizer(touch)
        touch.addTarget(self, action: "start:")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func start(btn:UIButton) {
        let s = num.text
        if let v = Int(s!){
            num.text = "\(v + 1)"
        }
    }
    func reset(btn:UIButton){
      num.text = "0"
    }
}
