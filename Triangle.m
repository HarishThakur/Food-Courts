//
//  Triangle.m
//  Food Courts
//
//  Created by Harish Singh on 09/11/15.
//  Copyright (c) 2015 Sourcebits Technologies. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 4);
    
    CGContextSetStrokeColorWithColor(context, [[UIColor greenColor] CGColor]);
    CGContextAddArc(context, 180, 200, 70, -M_PI, M_PI, FALSE);
    CGContextStrokePath(context);
    
    CGContextSetStrokeColorWithColor(context, [[UIColor greenColor] CGColor]);
    CGContextAddArc(context, 150, 180, 2, -M_PI, M_PI, FALSE);
    CGContextStrokePath(context);

    CGContextSetStrokeColorWithColor(context, [[UIColor greenColor] CGColor]);
    CGContextAddArc(context, 210, 180, 2, -M_PI, M_PI, FALSE);
    CGContextStrokePath(context);
    
    CGContextSetStrokeColorWithColor(context, [[UIColor greenColor] CGColor]);
    CGContextAddArc(context, 180, 210, 30, 0, M_PI, FALSE);
    CGContextStrokePath(context);
    
    //    UIBezierPath *trianglePath = [[UIBezierPath alloc]init];
    //    [trianglePath moveToPoint:CGPointMake(125,125)];
    //    [trianglePath addLineToPoint:CGPointMake(220,220)];
    //    [trianglePath addLineToPoint:CGPointMake(125,220)];
    //    [trianglePath closePath];
    //    [[UIColor greenColor] setFill];
    //    [[UIColor redColor] setStroke];
    //    [trianglePath fill];
    //    [trianglePath stroke];

    
}


@end
