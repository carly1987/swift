//
//  Header.swift
//  piece
//
//  Created by cieldon on 16/3/14.
//  Copyright © 2016年 ___carly___. All rights reserved.
//  type = 0,1

import UIKit
import SnapKit
class Header: UINavigationController{
    
}
//class Header: UIViewController{
//    var header : UINavigationBar!
//    var Type : Int!
//    var defaults = NSUserDefaults.standardUserDefaults()
//    var words : [String]!
//    var descs : [String]!
//    init(type : Int!) {
//        super.init(nibName: nil, bundle: nil)
//        Type = type
////        words = defaults.stringArrayForKey("words")
////        descs = defaults.stringArrayForKey("descs")
//        words = []
//        descs = []
//    }
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder : aDecoder)
//    }
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        header = UINavigationBar()
//        header.barStyle = .Default
//        let navitem = UINavigationItem()
//        navitem.title = "Piece"
//        if(Type == 0){
//            let add = UIBarButtonItem(title: "Add", style: .Done, target: self, action: "add:")
//            navitem.setRightBarButtonItem(add, animated: false)
//        }else if(Type == 1){
//            let prev = UIBarButtonItem(title: "Prev", style: .Done, target: self, action: "prev:")
//            navitem.setLeftBarButtonItem(prev, animated: false)
//            let submit = UIBarButtonItem(title: "Done", style: .Done, target: self, action: "submit:")
//            navitem.setRightBarButtonItem(submit, animated: false)
//        }
//        
//        header.setItems([navitem], animated: false)
//        view.addSubview(header)
//        header.snp_makeConstraints{ (make) -> Void in
//            make.top.equalTo(view).offset(0)
//            make.left.equalTo(view).offset(0)
//            make.right.equalTo(view).offset(0)
//            make.height.equalTo(64)
//        }
//    }
//    func add(btn:UIBarButtonItem){
//        self.presentViewController(Detail(id:0),animated: false, completion: nil)
//        print(self.presentingViewController, self.presentedViewController)
//    }
//    func prev(btn:UIBarButtonItem){
////        self.presentedViewController(TableView(),animated: false, completion: nil)
//    }
//    func submit(){
//        defaults.setObject([], forKey: "words")
//        defaults.setObject([], forKey: "descs")
//
//    }
////    func submit(word:String!, desc:String!){
////        words.append(Word.text!)
////        descs.append(Desc.text!)
////        defaults.setObject([], forKey: "words")
////        defaults.setObject([], forKey: "descs")
////        
////    }
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//}