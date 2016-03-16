//
//  TableViewController.swift
//  piece
//
//  Created by cieldon on 16/3/11.
//  Copyright © 2016年 ___carly___. All rights reserved.
//

import UIKit
import SnapKit
class TableViewController: UITableViewController{
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
            listcell.textLabel!.text = item.valueForKey("word") as? String
        }
        return cell
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.navigationController?.pushViewController(Detail(id:nil), animated: false)
//        self.navigationController?.popToViewController(Detail(id:indexPath.row), animated: false)
        print(self)
    }
    
}