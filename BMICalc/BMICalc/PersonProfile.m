//
//  PersonProfile.m
//  BMICalc
//
//  Created by KHALID ALAHMARI on 9/24/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "PersonProfile.h"

@implementation PersonProfile


@synthesize  Hight;
@synthesize  Weight;

 
-(id) initHight:(double)aHight AndWeight:(double)aWeight
{
    if(self !=nil)
 {
        self.Hight=aHight;
        self.Weight=aWeight;
        
    }//
    
    return self;
    
}

-(double) BMICalcaution
{
    double wieght = self.Weight;
    
    double hight = self.Hight;
    
    double BMI=wieght / (hight*hight);
    
    return BMI;
}



@end
