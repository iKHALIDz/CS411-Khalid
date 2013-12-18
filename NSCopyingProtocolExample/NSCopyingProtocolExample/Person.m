//
//  Person.m
//  NSCopyingProtocolExample
//
//  Created by KHALID ALAHMARI on 10/12/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "Person.h"

@implementation Person


-(id) initWithFirstname: (NSString*) firstname andLastname: (NSString*) lastname 
{
    [super init];
    if(self !=nil)
    {
        _firstname= [firstname retain];
         _lastname=[lastname retain];
    }
    
    return self;
    
}

-(NSDate*) birthday
{
    return _birthday;
}

-(void) setBirthday: (NSDate*)aDay
{
    [_birthday release];
    
    _birthday= [aDay retain];
}

-(NSString*) firstname
{
    return _firstname;
    
    
}
-(void) setFirstname: (NSString* ) firstname
{
    [_firstname release];
    
    _firstname= [firstname retain];
}

-(NSString*) lastname
{
    return _lastname;
}
-(void) setLastname: (NSString*) lastname
{
    [lastname release];
    
    _lastname= [lastname retain];
}

-(NSString*) description
{
    NSString *descriptionString = [NSString stringWithFormat:@"First Name: %@ Last Name: %@ Date: %@", self.firstname, self.lastname,self.birthday];
    return descriptionString;
    
}

- (id)copyWithZone:(NSZone *)zone
{
    Person* copy = [[[self class] alloc ]init];
    if(copy)
    {
        
        [copy setBirthday:[self birthday]];
        [copy setFirstname:[self firstname]];
        [copy setLastname:[self lastname]];
    }
    
    return copy;
}


@end
