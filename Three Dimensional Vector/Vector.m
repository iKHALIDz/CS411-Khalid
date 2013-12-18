//
//  Vector.m
//  Three Dimensional Vector
//
//  Created by KHALID ALAHMARI on 10/12/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "Vector.h"

@implementation Vector


-(id) initWithxComponent: (NSNumber*) axComponent andYComponent: (NSNumber*) ayComponent andzComponent:(NSNumber*) azComponent
{
    [super init];
    if(self!=nil)
    {
        _xComponent=[axComponent retain];
        _yComponent=[ayComponent retain];
        _zComponent=[azComponent retain];
    }
    
    return self;
    
}

-(NSNumber *) xComponent
{
    return _xComponent;
}
-(NSNumber *) yComponent
{
    return _yComponent;
}

-(NSNumber *) zComponent
{
    return _zComponent;
}

-(void) setXComponent:(NSNumber *)axComponent
{
    if ( axComponent != _xComponent )
    {
    [_xComponent release];
    _xComponent=[axComponent retain];
    }
}

-(void) setYComponent:(NSNumber *)ayComponent
{
    if ( ayComponent != _yComponent )
    {
    [_yComponent release];
    _yComponent=[ayComponent retain];
    }
}

-(void) setZComponent:(NSNumber *)azComponent
{
    if(azComponent !=_zComponent)
    {
        
    [_zComponent release];
    _zComponent=[azComponent retain];
    }
    
}








-(NSString*) description
{
    NSString *descriptionString = [NSString stringWithFormat:@"X: %f Y: %f Z: %f",[self.xComponent floatValue], [self.yComponent floatValue],[self.zComponent floatValue]];
    
    return descriptionString;
    
}

-(Vector *) Addtion:(Vector *)vectorB
{
    
    Vector *result=[[Vector alloc]init];
    
    
    [result setXComponent:[NSNumber numberWithFloat:([self.xComponent floatValue]+[vectorB.xComponent floatValue])]];
    [result setYComponent:[NSNumber numberWithFloat:([self.yComponent floatValue]+[vectorB.yComponent floatValue])]];
    
    [result setZComponent:[NSNumber numberWithFloat:([self.zComponent floatValue]+[vectorB.zComponent floatValue])]];
    
    [result autorelease];
    
    return result;
    
}

-(id) copyWithZone:(NSZone *)zone
{
    
    Vector *copy;
    copy=[[[self class] allocWithZone:zone]init];
    
    if(copy)
    {
        copy.xComponent=self.xComponent;
        copy.yComponent=self.yComponent;
        copy.zComponent=self.zComponent;
    }
    
    return copy;
}

@end
