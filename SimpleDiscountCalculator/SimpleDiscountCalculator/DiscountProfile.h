//
//  DiscountProfile.h
//  SimpleDiscountCalculator
//
//  Created by KHALID ALAHMARI on 10/8/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DiscountProfile : NSObject

@property double price;
@property double dollarsOff;
@property double discountPercentage;
@property double additionalDiscountPercentage;
@property double taxPercentage;
@property double originalPrice;
@property double discountPrice;

-(void) discountAmountCalculator;

@end
