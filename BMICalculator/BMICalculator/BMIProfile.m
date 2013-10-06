//
//  BMIProfile.m
//  BMICalculator
//
//  Created by KHALID ALAHMARI on 10/1/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "BMIProfile.h"

@implementation BMIProfile

@synthesize  Hight;
@synthesize  Weight;


-(id) initHight:(double)aHight AndWeight:(double)aWeight
{
    if(self !=nil)
    {
        self.Hight=aHight;
        self.Weight=aWeight;
        
    }
    return self;
}

-(double) EnglishMetricBMICalcaution
{
    double wieght = self.Weight;
    
    double hight = self.Hight;
    
    double BMI=wieght / ((hight/100)*(hight/100));
    
    return BMI;
}


-(double) USMetricBMICalcaution2;
{
    double wieght = self.Weight;
    
    double hight = self.Hight;
    
    double BMI=(wieght * 703)/ (hight * hight);
    
    return BMI;
    
}

@end

