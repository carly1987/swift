//
//  EditWordViewController.swift
//  Piece
//
//  Created by cieldon on 16/3/18.
//  Copyright © 2016年 cieldon. All rights reserved.
//

import UIKit
import SnapKit
import YYText
class EditWordViewController: UIViewController, UITextFieldDelegate{
    var groupData : WordModel!
    var wordData : AnyObject!
    var word: UITextField!
    var desc: UITextView!
    var wordString: String!
    var descString: String!
    var Id: Int!
    init (id: Int!){
        super.init(nibName: nil, bundle: nil)
        groupData = WordModel()
        wordData = []
        wordString = ""
        descString = ""
        if let wordList = groupData.getGroupData(0){
            if let ID = id{
                Id = id
                if let list = wordList["list"]{
                    wordData = list![ID]
                    wordString = wordData.valueForKey("word") as? String
                    wordString = wordData.valueForKey("desc") as? String
                }
            }
        }
        
        view.backgroundColor = UIColor.whiteColor()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder : aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let save = UIBarButtonItem(title: "Save", style: .Done, target: self, action: "saveWord:")
        self.navigationItem.setRightBarButtonItem(save, animated: false)

        word = UITextField()
        word.delegate = self
        word.placeholder = "请输入单词"
        word.text = wordString
        view.addSubview(word)
        word.snp_makeConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(64)
            make.left.equalTo(view).offset(10)
            make.right.equalTo(view).offset(-10)
            make.height.equalTo(50)
        }
        
        desc = UITextView()
        desc.text = descString
        view.addSubview(desc)
        desc.snp_makeConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(114)
            make.left.equalTo(view).offset(10)
            make.right.equalTo(view).offset(-10)
            make.bottom.equalTo(view).offset(0)
        }
        
    }
    
    func saveWord(btn:UIBarButtonItem){
        groupData.saveWord(0, word:Id, wordString:word.text, descString:desc.text)
        self.navigationController?.popViewControllerAnimated(false)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
}
