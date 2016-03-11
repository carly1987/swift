//
//  List.swift
//  piece
//
//  Created by cieldon on 16/2/17.
//  Copyright © 2016年 ___carly___. All rights reserved.
//

import UIKit
import SnapKit
class List: UIViewController, UIScrollViewDelegate{
    var showForm: UIButton!
    var list : WordControllerTemp!
    var formToAddWord : FormToAddWord!
    var Nav : Header!
    var flowLayout : UICollectionViewFlowLayout!
    init(header:Header) {
        super.init(nibName: nil, bundle: nil)
        Nav = header
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder : aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.frame.origin.y = 64
        //list
//        flowLayout = UICollectionViewFlowLayout()
////        flowLayout.itemSize = CGSizeMake(view.bounds.width, 50)
//        flowLayout.minimumLineSpacing = 1.0
//        flowLayout.scrollDirection = .Vertical
//        list = WordController(collectionViewLayout: flowLayout)

//        print(list.view)
//        view.addSubview(list.view)
//        list.view.snp_updateConstraints{ (make) -> Void in
//            make.top.equalTo(view).offset(164)
//            make.left.equalTo(view).offset(0)
//            make.right.equalTo(view).offset(0)
//            make.bottom.equalTo(view).offset(0)
//        }

        //showForm
        showForm = UIButton()
        showForm.setTitle("＋添加单词", forState: .Normal)
        showForm.setTitleColor(UIColor(red: 98/255, green: 98/255, blue: 98/255, alpha: 1.0), forState: .Normal)
        showForm.addTarget(self, action: "pullToAdd", forControlEvents: .TouchUpInside)
        view.addSubview(showForm)
        showForm.snp_makeConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(64)
            make.left.equalTo(view).offset(0)
            make.right.equalTo(view).offset(0)
            make.height.equalTo(100)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
//
//    func scrollViewWillBeginDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool) {
//        print("开始滚动")
//    }
//    
//    func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool) {
//        print("结束滚动")
//    }
//
    func pullToAdd(){
        formToAddWord = FormToAddWord()
        view.addSubview(formToAddWord.view)
        formToAddWord.view.snp_updateConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(64)
            make.left.equalTo(view).offset(0)
            make.right.equalTo(view).offset(0)
            make.bottom.equalTo(view).offset(10)
        }
//        Nav.showPrev(form:formToAddWord)
    }

}