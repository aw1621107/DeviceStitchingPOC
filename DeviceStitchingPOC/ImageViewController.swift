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
    var pano : UIImage? = nil
    
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 1...19 {
            imagePaths.append(NSBundle.mainBundle().pathForResource(NSString(format: "DJI_00%02d", i) as String, ofType: "JPG")!)
        }
        NSLog("\(imagePaths.count)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

