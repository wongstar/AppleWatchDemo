//
//  TestTableInterfaceController.swift
//  WatchDemo
//
//  Created by igeak on 17/2/9.
//  Copyright © 2017年 star. All rights reserved.
//

import WatchKit
import Foundation


class TestTableInterfaceController: WKInterfaceController {

    let sources=["1","2","3","4","5"]
    
    @IBOutlet var table: WKInterfaceTable!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        self.setTitle("tableView测试");
        table.setNumberOfRows(sources.count, withRowType: "cellId")
        print("the size is :",sources.count);
        for index in 0..<table.numberOfRows{
            if let cell = table.rowController(at: index) as? TestTableCell {
                print("the value is:"+sources[index])
                cell.source=sources[index]
            }
            
        }
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        
    }
    
   

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
