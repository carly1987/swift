//
//  DetailViewController.swift
//  Piece
//
//  Created by cieldon on 16/3/18.
//  Copyright © 2016年 cieldon. All rights reserved.
//

import UIKit
import SnapKit
class DetailViewController: UIViewController{
    var wordList: AnyObject!
    var wordData: AnyObject!
    var word: UILabel!
    var desc: UITextView!
    var wordString: String!
    var descString: String!
    init (id: Int!){
        super.init(nibName: nil, bundle: nil)
        wordString = ""
        descString = ""
        view.backgroundColor = UIColor.whiteColor()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder : aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        word = UILabel()
        word.text = wordString
        word.font = UIFont.monospacedDigitSystemFontOfSize(20, weight: 0)
        word.adjustsFontSizeToFitWidth = true
        view.addSubview(word)
        word.snp_makeConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(64)
            make.left.equalTo(view).offset(10)
            make.right.equalTo(view).offset(10)
            make.height.equalTo(50)
        }
        
        desc = UITextView()
        desc.text = descString
        desc.font = UIFont.monospacedDigitSystemFontOfSize(16, weight: 0)
        view.addSubview(desc)
        desc.snp_makeConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(114)
            make.left.equalTo(view).offset(10)
            make.right.equalTo(view).offset(10)
            make.bottom.equalTo(view).offset(0)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
