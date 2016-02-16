//
//  TableViewController.swift
//  1
//
//  Created by cieldon on 16/1/13.
//  Copyright © 2016年 cieldon. All rights reserved.
//

import UIKit
import SnapKit
class TableViewController: UITableViewController{
    var header : UINavigationBar!
    var itemData : TableViewModel!
    override init(style: UITableViewStyle){
        super.init(style: style)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        itemData = TableViewModel()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.registerClass(TableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        header = UINavigationBar()
        header.barStyle = .Default
        let navitem = UINavigationItem()
        
        let edit = UIBarButtonItem(title: "Edit", style: .Done, target: self, action: "edit:")
        navitem.title = "movies"
        navitem.setLeftBarButtonItem(edit, animated: false)
        header.setItems([navitem], animated: false)
        return header
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 64
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemData.data.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        cell.accessoryType = .DisclosureIndicator
        cell.editingAccessoryType = .Checkmark
        cell.editing = true
        let listcell = cell as! TableViewCell
        if let item = itemData.getItemData(indexPath.row) {
            listcell.textLabel!.text = item.valueForKey("title") as? String
        }
        return cell

    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    func edit(btn:UIBarButtonItem){
        if self.editing {
            self.editing = false
            btn.title = "Edit"
        }else{
            self.editing = true
            btn.title = "End"
        }
    }
}
