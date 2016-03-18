//
//  WordModel.swift
//  Piece
//
//  Created by cieldon on 16/3/17.
//  Copyright © 2016年 cieldon. All rights reserved.
//

import Foundation
import ObjectMapper


class Group: Mappable {
    var title : String!
    var list : [AnyObject]!
    init(){}
    required init?(_ map:Map){
        mapping(map)
    }
    func mapping(map: Map) {
        title <- map["title"]
        list <- map["list"]
    }
}
class Word: Mappable {
    var word : String!
    var desc : String!
    init(){}
    required init?(_ map:Map){
        mapping(map)
    }
    func mapping(map: Map) {
        word <- map["word"]
        desc <- map["desc"]
    }
}
class WordModel: NSObject{
    var data: [AnyObject]!
    var dataJson: [[String : AnyObject]]!
    var defaults = NSUserDefaults.standardUserDefaults()
    override init() {
        super.init()
//        let json = "[{\"title\":\"gropu1\",\"list\":[{\"word\":\"a\", \"desc\":\"aa\"}, {\"word\":\"aa\", \"desc\":\"aaa\"}]},{\"title\":\"gropu2\",\"list\":[{\"word\":\"b\", \"desc\":\"bb\"}, {\"word\":\"bb\", \"desc\":\"bbb\"}]}]"
        data = []
        if let json = defaults.stringArrayForKey("groups"){
            let a = Mapper<Group>().mapArray(json)
            dataJson = a?.toJSON()
            for var index = 0; index < dataJson.count; ++index{
                let list = dataJson[index]["list"]
                let b = Mapper<Word>().mapArray(list)
                let listJson = b?.toJSON()
                dataJson[index]["list"] = listJson
            }
            data = dataJson
        }
    }
    
    func getGroupData(atIndex: Int!) -> AnyObject? {
        if(data.count > 0){
            if let group = data?[atIndex]{
                return group
            }
        }
        return nil
    }
    
    func getWordData(atIndex: Int!, group:Int!) ->AnyObject? {
        if let list = getGroupData(group){
            if let word = list[atIndex]{
                return word
            }
        }
        return nil
    }
    
    func saveWord(group:Int!, word:Int!, wordString:String!, descString:String!){
        if(word){
            if let groups = defaults.stringArrayForKey("groups"){
                
            }
        }
        
    }
}