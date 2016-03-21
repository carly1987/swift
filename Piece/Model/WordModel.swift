////
////  WordModel.swift
////  Piece
////
////  Created by cieldon on 16/3/17.
////  Copyright © 2016年 cieldon. All rights reserved.
////
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
    var data: AnyObject!
    var defaults = NSUserDefaults.standardUserDefaults()
    override init() {
        super.init()
        var dataJson: [[String : AnyObject]]!
        defaults.removeObjectForKey("groups")
        print("初始化：", defaults.dictionaryForKey("groups"))
        if let json = defaults.dictionaryForKey("groups"){
            let a = Mapper<Group>().mapArray(json)
            dataJson = a?.toJSON()
            if (dataJson != nil && dataJson.count > 0){
                for var index = 0; index < dataJson.count; ++index{
                    let list = dataJson[index]["list"]
                    let b = Mapper<Word>().mapArray(list)
                    let listJson = b?.toJSON()
                    dataJson[index]["list"] = listJson
                }
                data = dataJson
            }
            
        }else{
            data = []
        }
    }

    func getGroupData(atIndex: Int!) -> AnyObject? {
        if(data != nil && data.count > 0){
            if let groupData = data?[atIndex]{
                return groupData
            }
        }
        return nil
    }

    func getWordData(atIndex: Int!, group:Int!) ->AnyObject? {
        if(data != nil && data.count > 0){
            if let groupData = data?[group]{
                if let wordList = groupData[atIndex]{
                    if let wordData = wordList["list"]{
                        if let word = wordData![atIndex]{
                            return word
                        }
                    }
                }
            }
        }
        return nil
    }

    func saveWord(group:Int!, word:Int!, wordString:String!, descString:String!){
        if(data.count > 0){
            if let list = getGroupData(group){
                if let wordList = getWordData(word, group: group){
                    print("修改：", data[group])
//                    data[group]!["list"]![word]!["word"]! = wordString
//                    data[group]!["list"]![word]!["desc"]! = descString
                }
            }
        }else{
            let json = ["title": "gropu1","list":["word":wordString,"desc":descString]]
            data = [json]
//            let dataString = String(data)
            defaults.setObject(data, forKey: "groups")
            print(data)
            print("结果：", defaults.dictionaryForKey("groups"))
        }
    }

}