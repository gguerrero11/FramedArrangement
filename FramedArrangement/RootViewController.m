//
//  RootViewController.m
//  FramedArrangement
//
//  Created by Gabriel Guerrero on 1/31/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Add each view to the view controller's main view in the view did load method:
    self.redView = [UIView new];
    self.redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.redView];
    
    self.greenView = [UIView new];
    self.greenView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.greenView];
    
    self.blueView = [UIView new];
    self.blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.blueView];
    
    self.yellowView = [UIView new];
    self.yellowView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.yellowView];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) layoutSquares {
    int sqW = self.view.frame.size.width / 2;
    int sqH = self.view.frame.size.height / 2;
    CGRect boxframeTopLeft = CGRectMake(0, 0, sqW, sqH);
    CGRect boxframeTopRight = CGRectMake(sqW, 0, sqW, sqH);
    CGRect boxframeBottomLeft = CGRectMake(0, sqH, sqW, sqH);
    CGRect boxframeBottomRight = CGRectMake(sqW, sqH, sqW, sqH);
    
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
