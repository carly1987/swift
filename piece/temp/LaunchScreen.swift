//
//  Test.swift
//  piece
//
//  Created by cieldon on 16/2/6.
//  Copyright © 2016年 ___carly___. All rights reserved.
//

import UIKit
import AVFoundation
import SnapKit
class Test: UIViewController {
    var labelDictionary : UILabel!
    var labelPiece: UILabel!
    var gradient: CAGradientLayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        gradient = CAGradientLayer()
        gradient.frame = view.bounds
        
        gradient.startPoint = CGPoint(x: 0.5, y: 0)
        gradient.endPoint = CGPoint(x: 0.5, y: 1)
        let colors: [CGColorRef] = [
            UIColor.clearColor().CGColor,
            UIColor(red: 8/255, green: 206/255, blue: 52/255, alpha: 1.0).CGColor,
            UIColor(red: 9/255, green: 121/255, blue: 57/255, alpha: 1.0).CGColor,
            UIColor.clearColor().CGColor ]
        gradient.colors = colors
        gradient.locations = [0.0, 0.0, 1.0]
        view.layer.addSublayer(gradient)
        
        labelDictionary = UILabel()
        view.addSubview(labelDictionary)
        labelDictionary.text = "Dictionary"
        labelDictionary.textAlignment = .Center
        labelDictionary.textColor = UIColor.whiteColor()
        labelDictionary.snp_makeConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(100)
            make.left.equalTo(view).offset(0)
            make.right.equalTo(view).offset(0)
            make.height.equalTo(60)
        }
        
        labelPiece = UILabel()
        view.addSubview(labelPiece)
        labelPiece.text = "Piece"
        labelPiece.textAlignment = .Center
        labelPiece.textColor = UIColor.whiteColor()
        labelPiece.snp_makeConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(180)
            make.left.equalTo(view).offset(0)
            make.right.equalTo(view).offset(0)
            make.height.equalTo(60)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
