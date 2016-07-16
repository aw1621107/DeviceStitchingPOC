//
//  main.hh
//  DeviceStitchingPOC
//
//  Created by Zhongtian Chen on 7/3/16.
//  Copyright © 2016 Zhongtian Chen. All rights reserved.
//

#ifndef main_hh
#define main_hh

void test_extrema(const char* fname, int mode);
void test_orientation(const char* fname);
void test_match(const char* f1, const char* f2);
void test_inlier(const char* f1, const char* f2);
void test_warp(int argc, char* argv[]);
void work(int argc, const char* argv[]);
void init_config(const char* config_file);
void planet(const char* fname);
//void start(int argc, const char* argv[]);
void stitchPanoWithImagePathsAndConfig(int numImages, const char* imagePaths[], const char* configPath, const char* outputFilePath);

#endif /* main_hh */
