//
//  Detail.swift
//  piece
//
//  Created by cieldon on 16/3/14.
//  Copyright © 2016年 ___carly___. All rights reserved.
//

import UIKit
import SnapKit
class Detail: UIViewController, UITextFieldDelegate{
    var header : Header!
    var word : UITextField!
    var desc : UITextView!
    var defaults = NSUserDefaults.standardUserDefaults()
    var words : [String]!
    var descs : [String]!
    var WordTitle : String!
    var WordDesction : String!
    init(id:Int!) {
        super.init(nibName: nil, bundle: nil)
        words = defaults.stringArrayForKey("words")
        descs = defaults.stringArrayForKey("descs")
//        WordTitle = words[id]
//        WordDesction = descs[id]
        WordTitle = "123"
        WordDesction = "456"
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder : aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        header = Header(type:1,word:word,desc:desc)
        view.addSubview(header.view)
        
        //word
        word = UITextField()
        word.delegate = self
        word.placeholder = WordTitle
        view.addSubview(word)
        word.snp_makeConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(64)
            make.left.equalTo(view).offset(10)
            make.right.equalTo(view).offset(-10)
            make.height.equalTo(50)
        }
        
        //desc
        desc = UITextView()
        desc.text = WordDesction
        view.addSubview(desc)
        desc.snp_updateConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(114)
            make.left.equalTo(view).offset(10)
            make.right.equalTo(view).offset(-10)
            make.bottom.equalTo(view).offset(0)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
