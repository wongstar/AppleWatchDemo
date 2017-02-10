//
//  TestTableCell.swift
//  WatchDemo
//
//  Created by igeak on 17/2/9.
//  Copyright © 2017年 star. All rights reserved.
//

import WatchKit

class TestTableCell: NSObject {

    @IBOutlet var leftTitle: WKInterfaceLabel!
    @IBOutlet var icon: WKInterfaceImage!
    
    var source:String?{
        didSet{
            leftTitle.setText(source);
            icon.setImage(UIImage.init(named: "like.png"))
        }
    }
}
