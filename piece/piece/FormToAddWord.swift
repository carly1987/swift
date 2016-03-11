//
//  FormToAddWord.swift
//  piece
//
//  Created by cieldon on 16/3/9.
//  Copyright © 2016年 ___carly___. All rights reserved.
//

import UIKit
import SnapKit
class FormToAddWord: UIViewController, UITextFieldDelegate{
    var word : UITextField!
    var desc : UITextView!
    var defaults = NSUserDefaults.standardUserDefaults()
    var words : [String]!
    var descs : [String]!
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder : aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()
        word = UITextField()
        word.delegate = self
        word.placeholder = "请输入单词"
        view.addSubview(word)
        word.snp_makeConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(0)
            make.left.equalTo(view).offset(10)
            make.right.equalTo(view).offset(-10)
            make.height.equalTo(50)
        }
        
        desc = UITextView()
        desc.text = "请输入"
        view.addSubview(desc)
        desc.snp_makeConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(50)
            make.left.equalTo(view).offset(10)
            make.right.equalTo(view).offset(-10)
            make.bottom.equalTo(view).offset(0)
        }
        words = defaults.stringArrayForKey("words")
        if(words == nil){
            words = []
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    func textFieldShouldReturn(textField: UITextField) -> Bool{
//        textField.resignFirstResponder()
//        words.append(textField.text!)
//        print(words)
//        defaults.setObject(words, forKey: "words")
//        view = nil
//        return true
//    }
}
