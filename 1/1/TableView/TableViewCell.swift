//
//  TableViewCell.swift
//  1
//
//  Created by cieldon on 16/1/13.
//  Copyright © 2016年 cieldon. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell{
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override init(style:UITableViewCellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier:reuseIdentifier)
    }
    
}