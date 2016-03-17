//
//  WordModel.swift
//  Piece
//
//  Created by cieldon on 16/3/17.
//  Copyright © 2016年 cieldon. All rights reserved.
//

import Foundation
import ObjectMapper
import AlamofireObjectMapper


class Group: Mappable {
    var title : String!
    var data : String!
    init(){}
    required init?(_ map:Map){
        mapping(map)
    }
    func mapping(map: Map) {
        title <- map["title"]
        data <- map["data"]
    }
}
class WordModel: NSObject{
    var data: [AnyObject?]!
    override init() {
        super.init()
//        var json = "[{'title':'gropu1', 'data':[{'word':'a', 'desc':'aa'},{'word':'aa', 'desc':'aaa'}]}, {'title':'gropu2', 'data':[{'word':'b', 'desc':'bb'},{'word':'bb', 'desc':'bbb'}]}]"
        let json = "[{"title":"gropu1","data":"haha"},{"title":"gropu2","data":"hehe"}]"

//        data = Mapper<Group>().map(json)
        data = []
        print(data)
        data?.append(Group(JSONString:json))
        print(data)
    }
    
    func getItemData(atIndex: Int) -> AnyObject? {
        if let item = data?[atIndex] {
            return item
        }
        return nil
    }
}