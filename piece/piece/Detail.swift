//
//  Detail.swift
//  piece
//
//  Created by cieldon on 16/3/1.
//  Copyright © 2016年 ___carly___. All rights reserved.
//

import UIKit
import SnapKit
class Detail: UIViewController{
    var word : UILabel!
    var desc : UITextView!
    var WordTitle : String!
    var WordDesction : String!
    init(wordTitle: String!, wordDesction: String!) {
        super.init(nibName: nil, bundle: nil)
        WordTitle = wordTitle
        WordDesction = wordDesction
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder : aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        //word
        word = UILabel()
        word.text = WordTitle
        view.addSubview(word)
        word.snp_updateConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(0)
            make.left.equalTo(view).offset(10)
            make.right.equalTo(view).offset(-10)
            make.height.equalTo(50)
        }
        word.userInteractionEnabled = true
        word.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "closeDetail"))
        
        //desc
        desc = UITextView()
        desc.text = WordDesction
        view.addSubview(desc)
        desc.snp_updateConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(50)
            make.left.equalTo(view).offset(10)
            make.right.equalTo(view).offset(-100)
            make.bottom.equalTo(view).offset(0)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func closeDetail(){
        view = nil
        print("closeDetail")
    }
}