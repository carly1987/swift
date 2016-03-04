//
//  WordCell.swift
//  piece
//
//  Created by cieldon on 16/2/18.
//  Copyright © 2016年 ___carly___. All rights reserved.
//

import UIKit
import SnapKit
class WordCell: UICollectionViewCell {
    var word : UILabel!
    var desc : UITextView!
    var detail : Detail!
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.whiteColor()
        //word
        word = UILabel()
        self.addSubview(word)
        word.snp_makeConstraints{ (make) -> Void in
            make.top.equalTo(self).offset(0)
            make.left.equalTo(self).offset(10)
            make.right.equalTo(self).offset(-10)
            make.height.equalTo(30)
        }
//        word.addGestureRecognizer(UILongPressGestureRecognizer(target: self, action: "openDetail"))
        
        //desc
        desc = UITextView()
        self.addSubview(desc)
        desc.snp_makeConstraints{ (make) -> Void in
            make.top.equalTo(self.word.snp_bottom).offset(0)
            make.left.equalTo(self).offset(10)
            make.right.equalTo(self).offset(-10)
            make.bottom.equalTo(self).offset(0)
        }
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
}