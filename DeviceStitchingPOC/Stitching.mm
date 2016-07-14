//
//  Stitching.mm
//  DeviceStitchingPOC
//
//  Created by Zhongtian Chen on 7/3/16.
//  Copyright © 2016 Zhongtian Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <iostream>
#import "Stitching.hh"
#import "main.hh"

using namespace std;

@implementation Stitching : NSObject

+ (UIImage *) stitchImagesOfPaths {//:(const char**)imagePaths {
    char const *paths[] = { "image-stitching",
        "/Users/zchen/Desktop/p4/DJI_0001.JPG",
        "/Users/zchen/Desktop/p4/DJI_0002.JPG",
        "/Users/zchen/Desktop/p4/DJI_0003.JPG",
        "/Users/zchen/Desktop/p4/DJI_0004.JPG",
        "/Users/zchen/Desktop/p4/DJI_0005.JPG",
        "/Users/zchen/Desktop/p4/DJI_0006.JPG",
        "/Users/zchen/Desktop/p4/DJI_0007.JPG",
        "/Users/zchen/Desktop/p4/DJI_0008.JPG",
        "/Users/zchen/Desktop/p4/DJI_0009.JPG",
        "/Users/zchen/Desktop/p4/DJI_0010.JPG",
        "/Users/zchen/Desktop/p4/DJI_0011.JPG",
        "/Users/zchen/Desktop/p4/DJI_0012.JPG",
        "/Users/zchen/Desktop/p4/DJI_0013.JPG",
        "/Users/zchen/Desktop/p4/DJI_0014.JPG",
        "/Users/zchen/Desktop/p4/DJI_0015.JPG",
        "/Users/zchen/Desktop/p4/DJI_0016.JPG",
        "/Users/zchen/Desktop/p4/DJI_0017.JPG",
        "/Users/zchen/Desktop/p4/DJI_0018.JPG", nullptr };
    char const ** argv = paths;
    start(19, argv);
    printf("finished stitching!");
    return nil;
}
/*
+ (char *[]) stringToChar: (NSString*) str {
    char array[1024];
    strncpy(array, str.c_str(), sizeof(array));
    array[sizeof(array) - 1] = 0;
    return array;
}*/

@end