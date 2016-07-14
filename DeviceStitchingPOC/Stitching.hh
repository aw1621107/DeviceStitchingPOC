//
//  Stitching.h
//  DeviceStitchingPOC
//
//  Created by Zhongtian Chen on 7/3/16.
//  Copyright © 2016 Zhongtian Chen. All rights reserved.
//

#ifndef Stitching_h
#define Stitching_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Stitching : NSObject
+ (UIImage *) stitchImagesOfPaths;//:(const char**)imagePaths;
//+ (char *) stringToChar: (NSString*) str;
@end

#endif /* Stitching_h */
