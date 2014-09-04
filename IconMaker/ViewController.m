//
//  ViewController.m
//  IconMaker
//
//  Created by LCQ on 14-8-19.
//  Copyright (c) 2014年 lcqgrey. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+UIImageExt.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Icon_origin" ofType:@"png"];
    UIImage *image = [UIImage imageWithContentsOfFile:path];
    
    [self appIcon:image];

    NSString *path1 = [[NSBundle mainBundle] pathForResource:@"default" ofType:@"png"];
    UIImage *defaultImage = [UIImage imageWithContentsOfFile:path1];
    
    [self appDefault:defaultImage];
    
    NSString *path2 = [[NSBundle mainBundle] pathForResource:@"introduce" ofType:@"png"];
    UIImage *defatImage = [UIImage imageWithContentsOfFile:path2];
    UIImage *icon_57 = [defatImage imageByScalingAndCroppingForSize:CGSizeMake(290.0, 178.0)];
    [icon_57 saveImageWithName:@"introduce.png"];
}

- (void)appIcon:(UIImage *)image
{
    
    UIImage *icon_57 = [image imageCroppingForSize:CGSizeMake(57.0, 57.0)];
    UIImage *icon_114 = [image imageCroppingForSize:CGSizeMake(114.0, 114.0)];
    UIImage *icon_29 = [image imageCroppingForSize:CGSizeMake(29.0, 29.0)];
    UIImage *icon_58 = [image imageCroppingForSize:CGSizeMake(58.0, 58.0)];
    UIImage *icon_72 = [image imageCroppingForSize:CGSizeMake(72.0, 72.0)];
    UIImage *icon_144 = [image imageCroppingForSize:CGSizeMake(144.0, 144.0)];
    UIImage *icon_50 = [image imageCroppingForSize:CGSizeMake(50.0, 50.0)];
    
    [icon_57 saveImageWithName:@"Icon.png"];
    [icon_114 saveImageWithName:@"Icon@2x.png"];
    [icon_29 saveImageWithName:@"Icon-Small.png"];
    [icon_58 saveImageWithName:@"Icon-Small@2x.png"];
    [icon_72 saveImageWithName:@"Icon-72.png"];
    [icon_144 saveImageWithName:@"Icon-72@2x.png"];
    [icon_50 saveImageWithName:@"Icon-Small-50.png"];
}

- (void)appDefault:(UIImage *)image
{
    UIImage *default_480 = [image imageByScalingAndCroppingForSize:CGSizeMake(320.0, 480.0)];
    UIImage *default_960 = [image imageByScalingAndCroppingForSize:CGSizeMake(640.0, 960.0)];
    UIImage *default_1136 = [image imageByScalingAndCroppingForSize:CGSizeMake(640.0, 1136.0)];
    
    [default_480 saveImageWithName:@"Default.png"];
    [default_960 saveImageWithName:@"Default@2x.png"];
    [default_1136 saveImageWithName:@"Default-568h@2x.png"];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
