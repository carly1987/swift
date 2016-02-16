//
//  IAD.swift
//  1
//
//  Created by cieldon on 16/1/8.
//  Copyright © 2016年 cieldon. All rights reserved.
//

import UIKit
import SnapKit
import iAd
class IAD: UIViewController, ADBannerViewDelegate{
    var ad : ADBannerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        ad = ADBannerView()
        ad.delegate = self
        view.addSubview(ad)
        ad.snp_makeConstraints{ (make) -> Void in
            make.bottom.equalTo(view).offset(0)
            make.left.equalTo(view).offset(0)
            make.right.equalTo(view).offset(0)
            make.height.equalTo(66)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
   
}
