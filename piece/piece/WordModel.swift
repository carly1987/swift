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
    
    override init() {
        super.init()
        
        data = Array()
        data.append(["word":"www", "desc":"wwwww"])
        data.append(["word":"vvv", "desc":"vvvvv"])
        data.append(["word":"aaa", "desc":"aaaaa"])
        data.append(["word":"bbb", "desc":"bbbbb"])
        data.append(["word":"ccc", "desc":"ccccc"])
    }
    
    func getItemData(atIndex: Int) -> AnyObject? {
        if let item = data?[atIndex] {
            return item
        }
        return nil
    }

}