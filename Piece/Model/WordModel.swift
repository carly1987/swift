////
////  WordModel.swift
////  Piece
////
////  Created by cieldon on 16/3/17.
////  Copyright © 2016年 cieldon. All rights reserved.
////
//
import Foundation
import SwiftyJSON

class WordModel: NSObject{
    var data: JSON!
    override init() {
        super.init()
        data = [
            [
                "title":"groupA",
                "list":
                    [
                        ["word":"A", "desc":"aa"],
                        ["word":"Aa", "desc":"aa"]
                    ]
            ],
            [
                "title":"groupB",
                "list":
                    [
                        ["word":"B", "desc":"bb"],
                        ["word":"Ba", "desc":"bb"]
                    ]
            ]
        ]
//        let jsonData = try? NSJSONSerialization.dataWithJSONObject(list, options: [])
//        let jsonObject = try? NSJSONSerialization.JSONObjectWithData(jsonData!, options: .AllowFragments)
//        data = JSON(jsonObject!)
        print(data[0]["title"])
        data[0]["title"] = "7777"
        print(data[0]["title"])
        
        
        var json: JSON =  [
            [
                "title":"groupA",
                "list":
                    [
                        ["word":"A", "desc":"aa"],
                        ["word":"Aa", "desc":"aa"]
                ]
            ],
            [
                "title":"groupB",
                "list":
                    [
                        ["word":"B", "desc":"bb"],
                        ["word":"Ba", "desc":"bb"]
                ]
            ]
        ]
//        json[0]["list"][3]["what"] = "that"
        json[0]["title"] = "494"
        print(json[0]["title"])
    }

}