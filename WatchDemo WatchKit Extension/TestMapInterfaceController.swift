//
//  TestMapInterfaceController.swift
//  WatchDemo
//
//  Created by igeak on 17/2/9.
//  Copyright © 2017年 star. All rights reserved.
//

import WatchKit
import Foundation


class TestMapInterfaceController: WKInterfaceController {

    @IBOutlet var myMovie: WKInterfaceMovie!

    @IBOutlet var map: WKInterfaceMap!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
       
        let moviePath=Bundle.main.path(forResource: "minion", ofType: "mp4")
        if moviePath == nil{
            return ;
        }
        let url = URL(fileURLWithPath:moviePath!)
        
        if url == nil{
            return;
        }
        self.myMovie.setMovieURL(url)
        
        self.myMovie.setLoops(true)
        self.myMovie.setPosterImage(WKImage.init(imageName: "like.png"))
        self.myMovie.setVideoGravity(WKVideoGravity.resizeAspect)
        
//        if let movieURL = myBundle.URLForResource("myMovie", withExtension: "mp4") {
//            self.movie.setMovieURL(movieURL)
//            
//        }
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
