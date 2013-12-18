//
//  Route.m
//  MassTransitApp
//
//  Created by KHALID ALAHMARI on 11/9/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "Route.h"

@implementation Route

@synthesize route_id,route_long_name;


-(id) initWithrouteID: (NSString*)rdID AndRouteLongName:(NSString*)rdLongName
{
    self=[super init];
    if (self)
    {
        self.route_id=rdID;

        self.route_long_name=rdLongName;
    }
    
    return self;
}

@end
