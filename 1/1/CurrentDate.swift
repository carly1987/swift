//
//  CurrentDate.swift
//  1
//
//  Created by cieldon on 16/1/13.
//  Copyright © 2016年 cieldon. All rights reserved.
//

import UIKit
import SnapKit
class CurrentDate : UIViewController{
    var label : UILabel!
    var time : UILabel!
    var refresh : UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //label
        label = UILabel()
        label.text = "CURRENT DATE AND TIME"
        label.textAlignment = .Center
        view.addSubview(label)
        label.snp_makeConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(100)
            make.left.equalTo(view).offset(0)
            make.right.equalTo(view).offset(0)
            make.height.equalTo(40)
        }
        
        //time
        time = UILabel()
        time.textAlignment = .Center
        time.font = UIFont.monospacedDigitSystemFontOfSize(20, weight: 0)
        view.addSubview(time)
        time.snp_makeConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(160)
            make.left.equalTo(view).offset(0)
            make.right.equalTo(view).offset(0)
            make.height.equalTo(60)
        }
        getCurrentDate()
        
        //refresh
        refresh =  UIButton()
        refresh.setTitle("refresh", forState: .Normal)
        refresh.setTitleColor(UIColor.blackColor(), forState: .Normal)
        refresh.setTitleColor(UIColor.blueColor(), forState: .Highlighted)
        view.addSubview(refresh)
        refresh.snp_makeConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(260)
            make.left.equalTo(view).offset(0)
            make.right.equalTo(view).offset(0)
            make.height.equalTo(40)
        }
        refresh.addTarget(self, action: "getCurrentDate", forControlEvents: .TouchUpInside)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func getCurrentDate (){
        let s = NSDate()
        let formatter = NSDateFormatter()
        formatter.dateFormat = "YYYY-MM-DD hh:ss:mm"
        time.text = formatter.stringFromDate(s)
    }
}
