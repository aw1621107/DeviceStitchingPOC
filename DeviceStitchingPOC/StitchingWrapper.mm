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
#import "StitchingWrapper.hh"
#import "main.hh"

using namespace std;

@implementation StitchingWrapper : NSObject

+ (UIImage *) stitchImagesOfPaths :(NSArray*)imagePaths{
    NSString* outputFilePath = [NSTemporaryDirectory() stringByAppendingString:@"pano.jpg"];
    if (imagePaths.count==0) {
        return nil;
    } else if (![imagePaths[0] isKindOfClass:[NSString class]]) {
        cerr << "ERROR: NSString array required for image paths!\n";
        return nil;
    }
    const char* charArrays[imagePaths.count];
    for (int i=0; i<imagePaths.count; i++) {
        charArrays[i] = [imagePaths[i] UTF8String];
    }
    stitchPanoWithImagePathsAndConfig(imagePaths.count, charArrays, [[[[NSBundle mainBundle] URLForResource:@"config" withExtension:@"cfg"] path] UTF8String], [outputFilePath UTF8String]);
    printf("finished stitching!");
    UIImage* pano = [UIImage imageWithContentsOfFile:outputFilePath];
    
    // TODO: Add proper tmp pano removal mechanisms.
    /*if(remove([outputFilePath UTF8String])>0){
        NSLog(@"ERROR: Cannot remove pano in tmp");
    }*/
    return pano;
}

@end