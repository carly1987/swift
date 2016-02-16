//
//  TipCalculator.swift
//  1
//
//  Created by cieldon on 16/1/12.
//  Copyright © 2016年 cieldon. All rights reserved.
//

import UIKit
import SnapKit
class TipCalculator: UIViewController, UITextFieldDelegate {
    var price : UITextField!
    var tip : UILabel!
    var total: UILabel!
    var model: TipCalculatorModel!
    var slider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        //price
        price = UITextField()
        price.textAlignment = .Right
        price.placeholder = "$0.00"
        price.textColor = UIColor.blackColor()
        price.font = UIFont.monospacedDigitSystemFontOfSize(100, weight: 0)
        price.delegate = self
        view.addSubview(price)
        price.snp_makeConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(64)
            make.left.equalTo(view).offset(10)
            make.right.equalTo(view).offset(-10)
            make.height.equalTo(100)
        }
        
        //tip
        tip = UILabel()
        tip.text = "Tip(15%)     $0.00"
        tip.textAlignment = .Right
        tip.textColor = UIColor.blackColor()
        tip.font = UIFont.monospacedDigitSystemFontOfSize(20, weight: 0)
        view.addSubview(tip)
        tip.snp_makeConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(200)
            make.left.equalTo(view).offset(10)
            make.right.equalTo(view).offset(-10)
            make.height.equalTo(40)
        }
        
        //total
        total = UILabel()
        total.text = "Total:     $0.00"
        total.textAlignment = .Right
        total.textColor = UIColor.blackColor()
        total.font = UIFont.monospacedDigitSystemFontOfSize(20, weight: 0)
        view.addSubview(total)
        total.snp_makeConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(260)
            make.left.equalTo(view).offset(10)
            make.right.equalTo(view).offset(-10)
            make.height.equalTo(40)
        }
        
        //slider
        slider = UISlider()
        slider.value = 0.15
        view.addSubview(slider)
        slider.snp_makeConstraints{ (make) -> Void in
            make.top.equalTo(view).offset(300)
            make.left.equalTo(view).offset(10)
            make.right.equalTo(view).offset(-10)
            make.height.equalTo(20)
        }
        
        slider.addTarget(self, action: "evaluateSlider", forControlEvents: .ValueChanged)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        evaluate()
        return true
    }
    
    func evaluateSlider(){
        evaluate()
    }
    
    func evaluate(){
        let p = price.text
        let s = slider.value
        if let v = Float(p!){
            model = TipCalculatorModel()
            let e = model.evaluate(CGFloat(v),tipPercentage: CGFloat(s))
            total.text = String(e[1])
            tip.text = "Tip(\(s * 100)%)     $\(e[0])"
        }

    }
}

