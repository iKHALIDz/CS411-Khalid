//
//  PersonProfile.m
//  BMICalc
//
//  Created by KHALID ALAHMARI on 9/24/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "PersonProfile.h"

@implementation PersonProfile


@synthesize  Name;
@synthesize  Hight;
@synthesize  Weight;

 
-(id) initWithName :(NSString*)aName AndHight:(double)aHight AndWeight:(double)aWeight
{
    if(self !=nil)
 {
        
        self.Name=aName;
        self.Hight=aHight;
        self.Weight=aWeight;
        
    }//
    
    return self;
    
}

/*
-(double) BMICalcaution : (PersonProfile *) aPersonProfile;
{
    
    
    
    double wieght = aPersonProfile.Weight;
    
    
    double hight = aPersonProfile.Hight;
    
    double BMI=wieght / (hight*hight);
    
    
    return BMI;

}
*/


-(double) BMICalcaution
{
    double wieght = self.Weight;
    
    
    double hight = self.Hight;
    
    double BMI=wieght / (hight*hight);
    
    
    return BMI;
}


-(NSString*) description
{
    
    NSString * descriptionString = [NSString stringWithFormat:@"Name: %@ Hight %f Weight %f",self.Name,self.Hight,self.Weight];
    
    return descriptionString;

 
}

@end
