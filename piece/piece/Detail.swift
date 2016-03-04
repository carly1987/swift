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
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        //word
        word = UILabel()
        word.text = "title"
        view.addSubview(word)
        word.snp_makeConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(0)
            make.left.equalTo(view).offset(10)
            make.right.equalTo(view).offset(-10)
            make.height.equalTo(30)
        }
        word.userInteractionEnabled = true
        word.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "closeDetail"))
        
        //desc
        desc = UITextView()
        desc.text = "hahahahhaa"
        view.addSubview(desc)
        desc.snp_makeConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(30)
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