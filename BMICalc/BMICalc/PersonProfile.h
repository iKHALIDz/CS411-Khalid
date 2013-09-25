//
//  PersonProfile.h
//  BMICalc
//
//  Created by KHALID ALAHMARI on 9/24/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PersonProfile : NSObject

@property (weak, nonatomic) NSString *Name;
@property  double Hight; 
@property  double  Weight; 
 
//-(id) initWithName :(NSString*)aName AndHight:(double)aHight AndWeight:(double)aWeight;

-(double) BMICalcaution : (PersonProfile *) aPersonProfile;



//
@end
