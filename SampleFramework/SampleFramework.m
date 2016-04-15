//
//  SampleFramework.m
//  SampleFramework
//
//  Created by sirooop on 2016/04/15.
//  Copyright © 2016年 sirooop. All rights reserved.
//

#import "SampleFramework.h"

@implementation SampleFramework

+ (void)printLog {
    NSLog(@"foo");
}

+ (UIImage *)getImage {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"SampleFrameworkResources" ofType:@"bundle"]; // ここでSampleFrameworkResources.bundleのパスがとれない
    NSBundle *bundle = [NSBundle bundleWithPath:path];
    return [UIImage imageWithContentsOfFile:[bundle pathForResource:@"image" ofType:@"png"]];
}

@end
