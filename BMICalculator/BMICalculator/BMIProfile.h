//
//  BMIProfile.h
//  BMICalculator
//
//  Created by KHALID ALAHMARI on 10/1/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BMIProfile : NSObject


@property  double Hight;
@property  double  Weight;

-(id) initHight:(double)aHight AndWeight:(double)aWeight;

-(double) BMICalcaution;

-(double) BMICalcaution2;


@end
