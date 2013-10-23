//
//  BarChart.m
//  SimpleDiscountCalculator
//
//  Created by KHALID ALAHMARI on 10/8/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "BarChart.h"

@implementation BarChart


@synthesize barchartDiscountProfile;


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
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
    
    double discountToOriginalPercentage=barchartDiscountProfile.discountPrice/barchartDiscountProfile.originalPrice;
    
    
    // to avoid drawing in case if the user swipe to left without entring any value..
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    
    if(barchartDiscountProfile!=nil){
  
    CGContextSetLineWidth(context, 2.0);
    
    //Draw The original Price bar chart
    CGContextSetRGBFillColor(context, 0.0, 0.0, 1.0, 1.0);
    CGContextSetRGBStrokeColor(context, 1.0, 1.0, 1.0, 1.0);
    CGContextFillRect(context, CGRectMake(30.0, 60, 110, 350)); // (x,y,width,hight)
    CGContextStrokePath(context);
    
    CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
        
        
    NSString *str1=[NSString stringWithFormat:@"$%.2f",barchartDiscountProfile.originalPrice];
        
    [str1 drawAtPoint:CGPointMake((30+110)/2-20, 350/2+60) withFont:[UIFont systemFontOfSize:15]];
    
        
    //Draw The saved amount bar chart along with percentage
    if(discountToOriginalPercentage!=1) // in case if the saved amount = 0
    {
    CGContextSetRGBFillColor(context, 1.0, 0.0, 0.0, 1.0);
    CGContextSetRGBStrokeColor(context, 1.0, 1.0, 1.0, 1.0);
    CGContextFillRect(context, CGRectMake(190, 60 + (350 * discountToOriginalPercentage), 110,350* ( 1 -discountToOriginalPercentage)));
    CGContextStrokePath(context);

    CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
    NSString *str4=[NSString stringWithFormat:@"$%.2f",barchartDiscountProfile.originalPrice-barchartDiscountProfile.discountPrice];
    [str4 drawAtPoint:CGPointMake((110/2)+190-35,(60+(350 * discountToOriginalPercentage)) + (350*(1-discountToOriginalPercentage))/2) withFont:[UIFont systemFontOfSize:15]];
        
    CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
        NSString *str5=[NSString stringWithFormat:@"%.1f%%",(1-discountToOriginalPercentage)*100];
        
    [str5 drawAtPoint:CGPointMake((110/2)+190-35,(60+(350 * discountToOriginalPercentage)) + (350*(1-discountToOriginalPercentage))/2 + 20) withFont:[UIFont systemFontOfSize:15]];
    }
        
        
    //Drawing the discount price along with discount percentage//
    //check if the orignal price discountToOriginalPercentage is greater than 0, meaning that if the discount price isn't zero
        

    if(discountToOriginalPercentage>0)
    {
    CGContextSetRGBFillColor(context, 0.0, 1.0, 0.0, 1.0);
    CGContextSetRGBStrokeColor(context, 1.0, 1.0, 1.0, 1.0);
    CGContextFillRect(context, CGRectMake(190, 60, 110, 350 * discountToOriginalPercentage));
    CGContextStrokePath(context);
     
        
    CGContextSetFillColorWithColor(context, [UIColor blackColor].CGColor);
    NSString *str2=[NSString stringWithFormat:@"$%.2f",barchartDiscountProfile.discountPrice];
        
    [str2 drawAtPoint:CGPointMake((110/2)+190-35, (350*discountToOriginalPercentage)/2+60) withFont:[UIFont systemFontOfSize:15]];
        
    CGContextSetFillColorWithColor(context, [UIColor blackColor].CGColor);
    NSString *str3=[NSString stringWithFormat:@"%.1f%%",discountToOriginalPercentage*100];

    [str3 drawAtPoint:CGPointMake((110/2)+190-35, (350*discountToOriginalPercentage)/2+60+20) withFont:[UIFont systemFontOfSize:15]];
    }
        
        
        
        //Drawing the Guideline Lines
        
        CGContextSetRGBStrokeColor(context, 0.0, 0.0, 1.0, 1.0);
        CGContextSetLineWidth(context, 6.0);
        CGContextMoveToPoint(context, 50, 15);
        CGContextAddLineToPoint(context, 0, 15);
        CGContextStrokePath(context);
        
        
        CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
        NSString *str6=@"Original Price";
        [str6 drawAtPoint:CGPointMake(55,9) withFont:[UIFont systemFontOfSize:10]];
        
        
        CGContextSetRGBStrokeColor(context, 0.0, 1.0, 0.0, 1.0);
        CGContextSetLineWidth(context, 6.0);
        CGContextMoveToPoint(context, 50, 30);
        CGContextAddLineToPoint(context, 0, 30);
        CGContextStrokePath(context);
        
        CGContextSetFillColorWithColor(context, [UIColor greenColor].CGColor);
        NSString *str7=@"Discount Price";
        [str7 drawAtPoint:CGPointMake(55,25) withFont:[UIFont systemFontOfSize:10]];
        
        CGContextSetRGBStrokeColor(context, 1.0, 0.0, 0.0, 1.0);
        CGContextSetLineWidth(context, 6.0);
        CGContextMoveToPoint(context, 50, 45);
        CGContextAddLineToPoint(context, 0, 45);
        CGContextStrokePath(context);
        
        CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
        NSString *str8=@"Saved Amount";
        [str8 drawAtPoint:CGPointMake(55,39) withFont:[UIFont systemFontOfSize:10]];

        
    }
    
    
    
}
@end
