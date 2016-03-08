//
//  WordController.swift
//  piece
//
//  Created by cieldon on 16/2/18.
//  Copyright © 2016年 ___carly___. All rights reserved.
//

import UIKit
import SnapKit
private let reuseIdentifier = "Cell"

class WordController : UICollectionViewController{
    var itemData : WordModel!
    var selectedRow = -1
    var detail : Detail!
//    var refreshControl = UIRefreshControl()
    override init(collectionViewLayout layout: UICollectionViewLayout) {
        super.init(collectionViewLayout: layout)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView?.backgroundColor = nil
        self.collectionView!.registerClass(WordCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        self.collectionView?.decelerationRate = 2
        
        self.collectionView?.scrollsToTop = true
        
        self.collectionView?.delegate = self
        
        self.collectionView?.alwaysBounceVertical = true
        
        itemData = WordModel()
        
//        self.automaticallyAdjustsScrollViewInsets = false
//        
//        refreshControl.addTarget(self, action: "addWord", forControlEvents: UIControlEvents.ValueChanged)
//        refreshControl.attributedTitle = NSAttributedString(string: "松开后")
//        self.collectionView?.addSubview(refreshControl)
//        addWord()
        
    }
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return itemData.data.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath)
        
        let wordCell = cell as! WordCell
        // Configure the cell
        
        if let item = itemData.getItemData(indexPath.row) {
            wordCell.word.text = item.valueForKey("word") as? String
//            wordCell.desc.text = item.valueForKey("desc") as? String
        }
        
        return cell
    }
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
//        if (selectedRow == indexPath.row){
//            selectedRow = -1
//            closeDetail()
//        }else{
//            selectedRow = indexPath.row
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
    
    func addWord(){
        print("addWord")
    }
    
    
}
