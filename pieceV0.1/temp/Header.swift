//
//  Header.swift
//  piece
//
//  Created by cieldon on 16/2/8.
//  Copyright © 2016年 ___carly___. All rights reserved.
//

import UIKit
import SnapKit

class Header: UIViewController {
    var nav: UINavigationBar!
    var navItem: UINavigationItem!
    var prevButton: UIBarButtonItem!
    var formToAddWord : FormToAddWord!
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder : aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nav = UINavigationBar()
        nav.barTintColor = UIColor(red: 2/255, green: 193/255, blue: 73/255, alpha: 1.0)
        nav.barStyle = .Black
        view.addSubview(nav)
        nav.snp_updateConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(0)
            make.left.equalTo(view).offset(0)
            make.right.equalTo(view).offset(0)
            make.height.equalTo(64)
        }
        navItem = UINavigationItem()
        navItem.title = "Piece"
        nav.setItems([navItem], animated: false)
    }
    
    func showPrev(form:FormToAddWord){
        prevButton = UIBarButtonItem(title: "Back", style: .Done, target: self, action: "goToPrev")
        navItem.setLeftBarButtonItem(prevButton, animated: false)
        nav.setItems([navItem], animated: false)
        formToAddWord = form
    }
    
    func goToPrev(){
        formToAddWord.view = nil
    }
    
}

