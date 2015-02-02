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
    CGFloat sqW = self.view.frame.size.width / 2;
    CGFloat sqH = self.view.frame.size.height / 2;
    
    CGRect checkerframeTopLeft = CGRectMake(0, 0, sqW, sqH);
    CGRect checkerframeTopRight = CGRectMake(sqW, 0, sqW, sqH);
    CGRect checkerframeBottomLeft = CGRectMake(0, sqH, sqW, sqH);
    CGRect checkerframeBottomRight = CGRectMake(sqW, sqH, sqW, sqH);
}

// implementation of layoutHorizontalRectangles
// Calculate the width and height of the rectangles, and the y of each row
// (4 flat horizontal rectangles stacked)
- (void) layoutHorizontalRectangles {

    CGFloat rectHeight = self.view.frame.size.height / 4;
    CGFloat rectWidth = self.view.frame.size.width;
    
    NSLog (@"Height of Rectangles: %f, Width of Rectangles: %f", rectHeight, rectWidth);
    
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
    
    
}


/*
- (void)lemsStacks {
    CGRect rect1;
    CGRect rect2;
    CGRect rect3;
    CGRect rect4;
    CGFloat mainHeight = self.view.frame.size.height;
    CGFloat rectHeight = mainHeight/4;
    CGRectDivide(self.view.frame, &rect1, &rect2, rectHeight*3, CGRectMaxYEdge);
    CGRectDivide(rect2, &rect2, &rect3, rectHeight*2, CGRectMaxYEdge);
    CGRectDivide(rect3, &rect3, &rect4, rectHeight, CGRectMaxYEdge);
    
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
