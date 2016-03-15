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
    var word : UITextField!
    var desc : UITextView!
    var defaults = NSUserDefaults.standardUserDefaults()
    var words : [String]!
    var descs : [String]!
    var WordTitle : String!
    var WordDesction : String!
    init(id:Int!) {
        super.init(nibName: nil, bundle: nil)
        view.backgroundColor = UIColor.whiteColor()
        if(defaults.stringArrayForKey("words") != nil){
            words = defaults.stringArrayForKey("words")
        }else{
            words = []
        }
        if(defaults.stringArrayForKey("descs") != nil){
            descs = defaults.stringArrayForKey("descs")
        }else{
            descs = []
        }
        print(id)
        if(id != nil){
            WordTitle = words[id]
            WordDesction = descs[id]
        }else{
            WordTitle = ""
            WordDesction = ""
        }
        
        let navItem = self.navigationItem
        navItem.title = "Type"
        let prev = UIBarButtonItem(title: "Prev", style: .Done, target: self, action: nil)
        let done = UIBarButtonItem(title: "Done", style: .Done, target: self, action: "done:")
        navItem.backBarButtonItem = prev
        navItem.setRightBarButtonItem(done, animated: false)
       

    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder : aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //word
        word = UITextField()
        word.delegate = self
        word.placeholder = "点击输入"
        word.text = WordTitle
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
    func done(btn:UIBarButtonItem){
        words.append(word.text!)
        descs.append(desc.text!)
        defaults.setObject(words, forKey: "words")
        defaults.setObject(descs, forKey: "descs")
        self.navigationController?.popViewControllerAnimated(false)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
