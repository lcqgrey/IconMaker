//
//  UIImage+UIImageExt.h
//  Test
//
//  Created by LCQ on 14-8-18.
//  Copyright (c) 2014年 lcqgrey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (UIImageExt)

 //等比缩放
- (UIImage *)imageByScalingAndCroppingForSize:(CGSize)targetSize;


- (UIImage *)imageCroppingForSize:(CGSize)targetSize;

- (void)saveImageWithName:(NSString *)imageName;

@end
