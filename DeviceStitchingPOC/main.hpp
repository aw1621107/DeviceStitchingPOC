//
//  main.hpp
//  DeviceStitchingPOC
//
//  Created by Zhongtian Chen on 7/3/16.
//  Copyright © 2016 Zhongtian Chen. All rights reserved.
//

#ifndef main_hpp
#define main_hpp

void test_extrema(const char* fname, int mode);
void test_orientation(const char* fname);
void test_match(const char* f1, const char* f2);
void test_inlier(const char* f1, const char* f2);
void test_warp(int argc, char* argv[]);
void work(int argc, char* argv[]);
void init_config();
void planet(const char* fname);
int main(int argc, char* argv[]);

#endif /* main_hpp */
