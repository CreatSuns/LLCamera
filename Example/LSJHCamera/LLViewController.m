//
//  LLViewController.m
//  LSJHCamera
//
//  Created by 1228506851@qq.com on 04/22/2020.
//  Copyright (c) 2020 1228506851@qq.com. All rights reserved.
//

#import "LLViewController.h"
#import <LSJHCamera/LLCameraViewController.h>
@interface LLViewController ()

@end

@implementation LLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    UIButton *  object = [[UIButton alloc]initWithFrame:CGRectMake( 0, 100, 200, 50)];
    [object setTitle:@"打开相机" forState:UIControlStateNormal];
    [object setBackgroundColor:[UIColor redColor]];
    [object addTarget:self action:@selector(addCamera) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:object];

}

- (void)addCamera{
    NSString * bundlePath = [NSBundle bundleForClass:self.class].resourcePath;
    NSLog(@"bundlePath==%@",bundlePath);
    LLCameraViewController * cameraVC =
    [[LLCameraViewController alloc] initWithType:LLCameraTypeAll
                                cameraOrientation:LLCameraOrientationBack];
    cameraVC.takePhoto = ^(UIImage * photo, NSString * imagePath) {};
    cameraVC.takeVideo = ^(NSString * videoPath) {

    };
    [self presentViewController:cameraVC animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
