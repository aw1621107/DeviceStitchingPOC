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
#import "Stitching.h"
#import "main.hpp"

using namespace std;

@implementation Stitching : NSObject

+ (UIImage *) stitchImageWithArray:(NSArray*)imagePaths {
    std::string myWord = "myWord";
    //char myArray[myWord.size()+1];
    //strcpy(myArray, myWord.c_str());
    //work(2, );
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