//
//  ViewController.swift
//  EasyGridExample
//
//  Created by Shoaib Ahmed Qureshi on 12/10/17.
//  Copyright © 2017 Shoaib Ahmed Qureshi. All rights reserved.
//

import UIKit


class ViewController: UIViewController , CustomGridViewDelegate {
    
    
    var  galleryView : CustomGridView!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func didSelectRow(at indexPath: IndexPath!, object gridObject: Any!) {
        print("item clicked is \(gridObject)")
        
    }
    
    
    
    func setUpCollection(yPosition:CGFloat) {
        
        let frame = CGRect.init(x: self.view.frame.origin.x, y: yPosition, width: self.view.frame.size.width, height: self.view.frame.size.height-100)
        
        galleryView = CustomGridView.init(frame: frame , andScrollDirection: .horizontal)
        galleryView.backgroundColor = UIColor.clear
        galleryView!.customGridViewDelegate = self
        
        
        let item = ItemDetail.init()
        item.itemId = "1"
        item.imageUrl = "https://image.flaticon.com/sprites/new_packs/145841-avatar-set.png"
        item.placeholder = "resize"
        
        
        let array = NSMutableArray.init()
        array.add(item)
        array.add(item)
        array.add(item)
        array.add(item)
        array.add(item)
        array.add(item)
        array.add(item)
        array.add(item)
        array.add(item)
        array.add(item)
        array.add(item)
        array.add(item)
        array.add(item)
        array.add(item)
        let cellRatio = (UIScreen.main.bounds.size.width-9)/3;
        galleryView.arrayGridObjects = array
        
        let cellSize = CGSize.init(width:cellRatio, height: cellRatio)
        galleryView.cellSize = cellSize
        
        galleryView.reloadGrid()
        self.view.addSubview(galleryView)
        galleryView.reloadGrid()
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

