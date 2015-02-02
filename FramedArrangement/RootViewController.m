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

// implementaton of layoutSquares
// Calculate the width and height of the squares, the x of the second column and y of the second row
// 4 squares like a checkerboard
- (void) layoutSquares {
    CGFloat sqLength = self.view.frame.size.width / 4;
    // CGFloat sqH = self.redView.frame.size.height / 2; // <---- It's squares so you don't need a height
    
    NSLog (@"Height of Rectangles: %f, Width of Rectangles: %f", sqLength, sqLength); // <--- its not showing!
    
    CGRect checkerframeTopLeft = CGRectMake(0, 0, sqLength, sqLength);
    CGRect checkerframeTopRight = CGRectMake(sqLength, 0, sqLength, sqLength);
    CGRect checkerframeBottomLeft = CGRectMake(0, sqLength, sqLength, sqLength);
    CGRect checkerframeBottomRight = CGRectMake(sqLength, sqLength, sqLength, sqLength);
}

// implementation of layoutHorizontalRectangles
// Calculate the width and height of the rectangles, and the y of each row
// (4 flat horizontal rectangles stacked)
- (void) layoutHorizontalRectangles {

    CGFloat rectHeight = self.view.frame.size.height / 4;
    CGFloat rectWidth = self.view.frame.size.width;
    
    NSLog (@"Height of Rectangles: %f, Width of Rectangles: %f", rectHeight, rectWidth); // <--- its not showing!
    
    CGRect frameTop1 = CGRectMake(0, 0, rectWidth, rectHeight);
    CGRect frameTop2 = CGRectMake(0, rectHeight, rectWidth, rectHeight);
    CGRect frameTop3 = CGRectMake(0, rectHeight*2, rectWidth, rectHeight);
    CGRect frameTop4 = CGRectMake(0, rectHeight*3, rectWidth, rectHeight);
    

}

// implementation of layout
// Calculate the width and height of the rectangles, and the x of each column
// (4 tall vertical rectangles)
- (void) layoutVerticalRectangles {
    
    CGFloat rectHeight = self.view.frame.size.height;
    CGFloat rectWidth = self.view.frame.size.width / 4;
    
    CGRect frameLeft1 = CGRectMake(0, 0, rectWidth, rectHeight);
    CGRect frameLeft2 = CGRectMake(rectWidth, 0, rectWidth, rectHeight);
    CGRect frameLeft3 = CGRectMake(rectWidth*2 , 0, rectWidth, rectHeight);
    CGRect frameLeft4 = CGRectMake(rectWidth*3, 0, rectWidth, rectHeight);

}
// implementation of layoutDiagonalSquares
// Calculate the width and height of the squares, the x and y of the each square
// (4 squares arranged diagonally)
- (void) layoutDiagonalSquares {
    CGFloat sqLength = self.view.frame.size.width / 4;
    // CGFloat sqH = self.redView.frame.size.height / 2; // <---- They are squares so you don't need a height
    
    NSLog (@"Height of Rectangles: %f, Width of Rectangles: %f", sqLength, sqLength); // <--- its not showing!
    
    CGRect box1 = CGRectMake(0, 0, sqLength, sqLength);
    CGRect box2 = CGRectMake(sqLength, sqLength, sqLength, sqLength);
    CGRect box3 = CGRectMake(sqLength*2, sqLength*2, sqLength, sqLength);
    CGRect box4 = CGRectMake(sqLength*3, sqLength*3, sqLength, sqLength);

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
