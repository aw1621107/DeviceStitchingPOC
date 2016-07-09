//
//  stitcher.hpp
//  DeviceStitchingPOC
//
//  Created by Zhongtian Chen on 7/3/16.
//  Copyright © 2016 Zhongtian Chen. All rights reserved.
//

#ifndef stitcher_h
#define stitcher_h

//#include "third-party/flann/flann.hpp"
//#include "third-party/lodepng/lodepng.h"

#include "lib/color.hh"
#include "lib/config.hh"
#include "lib/debugutils.hh"
#include "lib/geometry.hh"
#include "lib/imgproc.hh"
#include "lib/kdtree.hh"
#include "lib/matrix.hh"
#include "lib/planedrawer.hh"
#include "lib/polygon.hh"
#include "lib/timer.hh"
#include "lib/utils.hh"

#include "feature/brief.hh"
#include "feature/dist.hh"
#include "feature/dog.hh"
#include "feature/extrema.hh"
#include "feature/feature.hh"
#include "feature/gaussian.hh"
#include "feature/matcher.hh"
#include "feature/orientation.hh"
#include "feature/sift.hh"

#include "stitch/blender.hh"
#include "stitch/camera.hh"
#include "stitch/camera_estimator.hh"
#include "stitch/cylstitcher.hh"
#include "stitch/homography.hh"
#include "stitch/imageref.hh"
#include "stitch/incremental_bundle_adjuster.hh"
#include "stitch/match_info.hh"
#include "stitch/multiband.hh"
#include "stitch/projection.hh"
#include "stitch/stitcher.hh"
#include "stitch/stitcher_image.hh"
#include "stitch/stitcherbase.hh"
#include "stitch/transform_estimate.hh"
#include "stitch/warp.hh"

#endif /* stitcher_h */
