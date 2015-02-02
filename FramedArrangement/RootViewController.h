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

@property (nonatomic) UIView *redView;
@property (nonatomic) UIView *greenView;
@property (nonatomic) UIView *blueView;
@property (nonatomic) UIView *yellowView;

// Add a method called layoutSquares
- (void) layoutSquares;

// Add a method called layoutHorizontalRectangles
- (void) layoutHorizontalRectangles;

// Add a method called layoutVerticalRectangles
- (void) layoutVerticalRectangles;

@end
