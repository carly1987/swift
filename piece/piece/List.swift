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
    var label: UIRefreshControl!
    var list : WordController!
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder : aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //list
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.itemSize = CGSizeMake(view.frame.width, 50)
        flowLayout.minimumLineSpacing = 1.0
        flowLayout.scrollDirection = .Vertical
        list = WordController(collectionViewLayout: flowLayout)
        view.addSubview(list.view)
        list.view.snp_updateConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(64)
            make.left.equalTo(view).offset(0)
            make.right.equalTo(view).offset(0)
            make.bottom.equalTo(view).offset(0)
        }
        
        //label
        label = UIRefreshControl()
        label.attributedTitle = NSAttributedString(string: "下拉添加单词")
        label.tintColor = UIColor(red: 98/255, green: 98/255, blue: 98/255, alpha: 1.0)
        label.addTarget(self, action: "pullToAdd", forControlEvents: UIControlEvents.ValueChanged)
//        list.view.addSubview(label)
//        label.snp_makeConstraints{ (make) -> Void in
//            make.top.equalTo(list.view).offset(64)
//            make.left.equalTo(list.view).offset(0)
//            make.right.equalTo(list.view).offset(0)
//            make.height.equalTo(100)
//        }
//
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

//    func scrollViewWillBeginDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool) {
//        print("开始滚动")
//    }
//    
//    func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool) {
//        print("结束滚动")
//    }
//    
    func pullToAdd(){
//        label.text = "释放编辑单词"
//        label.frame.origin.y = 100
        print("释放编辑单词")
    }
//    func releaseToAdd(){
////        label.text = "下拉添加单词"
////        label.frame.origin.y = 64
//    }
}