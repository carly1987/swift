//
//  WordModel.swift
//  piece
//
//  Created by cieldon on 16/2/18.
//  Copyright © 2016年 ___carly___. All rights reserved.
//

import Foundation

class WordModel : NSObject {
    var data: [AnyObject?]!
    var defaults = NSUserDefaults.standardUserDefaults()
    var words : [String]!
    override init() {
        super.init()
        
        data = Array()
        words = defaults.stringArrayForKey("words")
        for var atIndex = 0; atIndex < words.count; ++atIndex{
            data.append(["word":words[atIndex], "desc":""])
        }
    }
    
    func getItemData(atIndex: Int) -> AnyObject? {
        if let item = data?[atIndex] {
            return item
        }
        return nil
    }

}