//
//  Thing.m
//  Final Review-(Q2) NSCopying
//
//  Created by KHALID ALAHMARI on 12/14/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "Thing.h"

@implementation Thing



-(id) initwithNumber:(NSNumber*) num
{
    self=[super self];
    if(self !=nil)
    {
        
        _data=[num retain];
    }
    
    return self;
    
}

-(NSNumber*) data
{
    
    return _data;
    
}

-(void) setData :(NSNumber*) num
{
    if(_data !=num)
    {
        
        [_data release];
        _data=[num retain];
    }
}

-(NSString*) description
{
    NSString *descriptionString = [NSString stringWithFormat:@"Number: %f",[_data doubleValue]];
    return descriptionString;
    
}

-(id)copyWithZone:(NSZone *)zone
{
    
    Thing *copy=[[Thing allocWithZone:nil] init];
    if (copy)
    {
        
        [copy setData:_data];
    }
    
    return copy;
}
@end
