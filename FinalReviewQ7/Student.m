//
//  Student.m
//  Final Review (Q7)
//
//  Created by KHALID ALAHMARI on 12/14/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "Student.h"

@implementation Student



-(NSString *)firstName
{
    
    return _firstName;
}

-(NSString *)lastName
{
    
    
    return _lastName;
}

-(NSString *)CWID
{
    
    return _CWID;
    
}

-(void)setFirstName:(NSString *)firstName
{
    if(_firstName!=firstName)
    {
        [_firstName release];
        _firstName=[firstName retain];
    }
}

-(void)setCWID:(NSString *)cwid
{
    if(_CWID!=cwid)
    {
        [_CWID release];
        _CWID=[cwid retain];
    }
}


-(void)setLastName:(NSString *)lastName;
{
    
    if (_lastName!=lastName)
    {
        NSString *old=_lastName;
        _lastName=[lastName retain];
        [old release];
    }
}


-(id)initwithFirstName:(NSString *)firstName AndLastName:(NSString *)lastName AndCWID:(NSString*)cwid
{
    self=[super init];
    
    if(self)
    {
        _lastName=[lastName retain];
        _firstName=[firstName retain];
        _CWID=[cwid retain];
    }
    return  self;
}


-(NSComparisonResult)compare:(Student *)otherObject
{
    return [ [self CWID] compare:[otherObject CWID]];
}

@end
