//
//  Metrolink.m
//  MassTransitApp
//
//  Created by KHALID ALAHMARI on 11/8/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "Metrolink.h"

@implementation Metrolink


-(id) init
{
    
    self=[super init];
    
    if (self)
    {
        _dbpath=@"Metrolink.sl3";
    }
    
    return self;
}
@end
