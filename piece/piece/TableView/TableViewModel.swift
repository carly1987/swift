//
//  TableViewModel.swift
//  piece
//
//  Created by cieldon on 16/3/11.
//  Copyright © 2016年 ___carly___. All rights reserved.
//

import Foundation
class TableViewModel : NSObject {
    
    var data: [AnyObject?]!
    var defaults = NSUserDefaults.standardUserDefaults()
    var words : [String]!
    var descs : [String]!
    override init() {
        super.init()
        
        data = Array()
//        if(defaults.stringArrayForKey("words") != nil){
//            words = defaults.stringArrayForKey("words")
//        }else{
//            words = []
//        }
//        if(defaults.stringArrayForKey("descs") != nil){
//            descs = defaults.stringArrayForKey("descs")
//        }else{
//            descs = []
//        }
//        if(words.count>0 && descs.count>0){
//            for var atIndex = 0; atIndex < words.count; ++atIndex{
//                data.append(["word":words[atIndex], "desc":descs[atIndex]])
//            }
//        }
    }
    
    func getItemData(atIndex: Int) -> AnyObject? {
        if let item = data?[atIndex] {
            return item
        }
        return nil
    }
    
}
