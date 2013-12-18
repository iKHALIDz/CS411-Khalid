//
//  Times.m
//  MassTransitApp
//
//  Created by KHALID ALAHMARI on 11/10/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "Times.h"

@implementation Times


@synthesize staionID,nextLocation,arrivalTime;


-(id) initWithStaionID: (NSString*)stID AndnextLocation:(NSString*)stnextLocation AndarrivalTime :(NSString *) DT
{
    
    self=[super init];
    if (self) {

        
        self.staionID=stID;
        self.nextLocation=stnextLocation;
        self.arrivalTime=DT;
        
    }
    
    return self;
}


@end
