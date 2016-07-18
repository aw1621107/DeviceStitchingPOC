//
//  ImageViewController.swift
//  DeviceStitchingPOC
//
//  Created by Zhongtian Chen on 7/3/16.
//  Copyright © 2016 Zhongtian Chen. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    var imagePaths : [NSString] = []
    var cArray : UnsafePointer<String> = nil
    var pano : UIImage? = nil
    
    let stitchingQueue = dispatch_queue_create("com.example.DeviceStitchingPOC.stitching", DISPATCH_QUEUE_CONCURRENT)
    
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 1...6 {
            imagePaths.append(NSBundle.mainBundle().pathForResource(NSString(format: "DJI_00%02d", i) as String, ofType: "JPG")!)
        }
        dispatch_async(dispatch_get_main_queue()){
            self.imageView.image = UIImage(named: "DJI_0010.JPG")
        }
        dispatch_async(stitchingQueue){
            self.imageView.image = StitchingWrapper.stitchImagesOfPaths(self.imagePaths)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

