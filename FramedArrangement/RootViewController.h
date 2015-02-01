//
//  RootViewController.h
//  FramedArrangement
//
//  Created by Gabriel Guerrero on 1/31/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController

// Step 2 Add Views to the Controller
// Add a redView, greenView, blueView, yellowView property to the interface of the view controller

@property (nonatomic, weak) UIView *redView;
@property (nonatomic, weak) UIView *greenView;
@property (nonatomic, weak) UIView *blueView;
@property (nonatomic, weak) UIView *yellowView;

@end
