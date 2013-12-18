//
//  BarChart.m
//  Discount Calculator
//
//  Created by KHALID ALAHMARI on 10/4/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "BarChart.h"


@implementation BarChart

@synthesize OR;
@synthesize Dis;


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    }

    return self;

}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor blackColor];
		self.opaque = YES;
		self.clearsContextBeforeDrawing = YES;
    }
    
    
    return self;
}




// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    
    NSLog(@"BarChart%.2f",OR);
    NSLog(@"BarChart%.2f",Dis);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // Drawing with a white stroke color
    CGContextSetRGBStrokeColor(context, 1.0, 1.0, 1.0, 1.0);
    // And drawing with a blue fill color
    CGContextSetRGBFillColor(context, 0.0, 0.0, 1.0, 1.0);
    // Draw them with a 2.0 stroke width so they are a bit more visible.
    CGContextSetLineWidth(context, 2.0);
    
    
    // Add Rect to the current path, then stroke it
    CGContextAddRect(context, CGRectMake(30.0, 30.0, 110, 400));
    
    CGContextStrokePath(context);
    
    CGContextAddRect(context, CGRectMake(200.0, 30.0, 110, 200));
    CGContextStrokePath(context);

    
    CGContextAddRect(context, CGRectMake(200.0, 230, 110, 400*0.5));
    
    CGContextStrokePath(context);
      
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
