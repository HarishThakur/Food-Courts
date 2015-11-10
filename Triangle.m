//
//  Triangle.m
//  Food Courts
//
//  Created by Harish Singh on 09/11/15.
//  Copyright (c) 2015 Sourcebits Technologies. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle

/**
 *  Method to draw a smiley and write a String - WELCOME from CGContextRef
 *
 *  @param rect defines the x-y postion, height and width of CGContextRef
 */
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
    
    
    CGRect viewBounds = self.bounds;
    CGContextTranslateCTM(context, 0, viewBounds.size.height);
    CGContextScaleCTM(context, 1, -1);
    CGContextSetRGBFillColor(context, 0.0, 1.0, 0.0, 1.0);
    CGContextSetLineWidth(context, 2.0);
    CGContextSelectFont(context, "Helvetica", 10.0, kCGEncodingMacRoman);
    CGContextSetCharacterSpacing(context, 1.7);
    CGContextSetTextDrawingMode(context, kCGTextFill);
    CGContextShowTextAtPoint(context, 150.0, 250.0, "WELCOME", 7);
    
    
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
