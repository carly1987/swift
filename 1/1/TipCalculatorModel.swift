//
//  TipCalculatorModel.swift
//  1
//
//  Created by cieldon on 16/1/12.
//  Copyright © 2016年 cieldon. All rights reserved.
//

import UIKit
import Foundation

class TipCalculatorModel{
    var total : CGFloat!
    init(){
        total = 90
    }
    func evaluate(price:CGFloat, tipPercentage:CGFloat) -> Array<CGFloat>{
        return [price * tipPercentage, price * tipPercentage + price]
    }
}

