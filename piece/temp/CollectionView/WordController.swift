//
//  WordControllerTemp.swift
//  piece
//
//  Created by cieldon on 16/2/18.
//  Copyright © 2016年 ___carly___. All rights reserved.
//

import UIKit
import SnapKit
private let reuseIdentifier = "Cell"

class WordControllerTemp : UICollectionView)ectedRow = indexPath.row
//            openDetail()
//        }
        var wordTitle : String!
        var wordDesction : String!
        if let item = itemData.getItemData(indexPath.row) {
            wordTitle = item.valueForKey("word") as? String
            wordDesction = item.valueForKey("desc") as? String
        }
        openDetail(wordTitle,wordDesction:wordDesction)
        collectionView.reloadData()
    }
    
    
    
    
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize{
//        var screen:CGRect = UIScreen.mainScreen().bounds
//        if(indexPath.row == selectedRow){
//            return CGSizeMake(collectionView.bounds.width, 80)
//        }else{
//            return CGSizeMake(collectionView.bounds.width, 50)
//        }
        return CGSizeMake(collectionView.frame.width, 50)
    }

    func openDetail(wordTitle:String!,wordDesction:String!) {
        detail = Detail(wordTitle:wordTitle, wordDesction:wordDesction)
        detail.view.backgroundColor = UIColor.whiteColor()
        self.view.superview!.addSubview(detail!.view)
        detail.view.snp_updateConstraints{ (make) -> Void in
            make.top.equalTo(self.view.superview!).offset(64)
            make.left.equalTo(self.view.superview!).offset(0)
            make.right.equalTo(self.view.superview!).offset(0)
            make.bottom.equalTo(self.view.superview!).offset(0)
        }
    }
    
    func closeDetail() {
        detail = nil
    }
    
}
