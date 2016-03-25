//
//  WordTableView.swift
//  Piece
//
//  Created by cieldon on 16/3/17.
//  Copyright © 2016年 cieldon. All rights reserved.
//

import UIKit
import SnapKit
import SwiftyJSON
class WordTableView: UITableViewController{
    var groupModel : WordModel!
    var wordList : JSON!
    var nav: UINavigationController!
    init(style: UITableViewStyle, nav: UINavigationController){
        super.init(style: style)
        self.nav = nav
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        groupModel = WordModel()
        wordList = []
        if let data = groupModel.getWordList(0){
            wordList = data
        }
        self.tableView.separatorStyle = .None
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.registerClass(WordTableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func refresh() {
        groupModel = WordModel()
        wordList = []
        if let data = groupModel.getWordList(0){
            wordList = data
        }
        self.tableView.reloadData()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wordList!.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        cell.backgroundColor = UIColor.clearColor()
        cell.editing = true
        let listcell = cell as! WordTableViewCell
        if let item = groupModel.getItemData(indexPath.row, list: wordList!) {
            listcell.textLabel!.text = item.valueForKey("word") as? String
        }
        return cell
        
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.nav.pushViewController(DetailViewController(id:indexPath.row), animated: false)
    }
    
//    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
//        return true
//    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        print(indexPath.row)
        
    }
//
//    override func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
//        return UITableViewCellEditingStyle.Delete
//    }

    
}
