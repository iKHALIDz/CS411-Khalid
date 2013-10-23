//
//  DiscountProfile.m
//  SimpleDiscountCalculator
//
//  Created by KHALID ALAHMARI on 10/8/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "DiscountProfile.h"

@implementation DiscountProfile

@synthesize price;
@synthesize discountPercentage;
@synthesize additionalDiscountPercentage;
@synthesize taxPercentage;
@synthesize dollarsOff;
@synthesize originalPrice;
@synthesize discountPrice;


-(void) discountAmountCalculator
{

    double tax=self.taxPercentage;
    double discount=self.discountPercentage;
    double addDiscount=self.additionalDiscountPercentage;
    double adollarsOff=self.dollarsOff;
    double aPrice=self.price;
    
    self.originalPrice= aPrice+ aPrice*(tax/100);
    
    
    self.discountPrice=aPrice * (1 - discount / 100) * (1 - addDiscount / 100) - adollarsOff + aPrice*(tax/100);
    
    //in case if the discountPrice is greater than the orignial price..
    if(self.discountPrice<0)
    {
        
        self.discountPrice=0;
    }
}

@end
