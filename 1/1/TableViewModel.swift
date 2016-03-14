//
//  TableViewModel.swift
//  1
//
//  Created by cieldon on 16/1/13.
//  Copyright © 2016年 cieldon. All rights reserved.
//

import Foundation
class TableViewModel : NSObject {
    
    var data: [AnyObject?]!
    
    override init() {
        super.init()
    
        data = Array()
        data.append(["title":"Iron", "description":"Iron Man"])
        data.append(["title":"Spider", "description":"Spider Man"])
        data.append(["title":"Bat", "description":"Bat Man"])
    }
    
    func getItemData(atIndex: Int) -> AnyObject? {
        if let item = data?[atIndex] {
            return item
        }
        return nil
    }
    
}