//
//  Person.m
//  MemoryManagementExample
//
//  Created by KHALID ALAHMARI on 10/10/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "Person.h"

@implementation Person
-(id) initWithName : (NSString*) aName AndZipCode :(NSNumber*) aZipCode
{
    [super init]; // Parent init .. 
    
    if(self !=nil)
    {
        _zipCode=[aZipCode retain];
        _name=[aName retain];
    }
    return self;
}


//getter
-(NSString*)name {return _name;}
//getter
-(NSNumber*)zipcode{return _zipCode;}

//setter
-(void)setName :(NSString*) aName AndZipCode :(NSNumber*) aZipCode
{
    if(_name!=aName)
    {
        
        [_name release];
        _name=[aName retain];
        
        [_zipCode release];
        _zipCode=[aZipCode retain];
    }
}

-(NSString*) description
{
  NSString *descriptionString = [NSString stringWithFormat:@"Name: %@ Address: %@", _name, _zipCode];
    return descriptionString;
    
}


-(void) dealloc
{
    
    [super dealloc];
    
    NSLog(@"The Object is Gone");
    
    
}

- (id)copyWithZone:(NSZone *)zone
{
    id copy = [[[self class] alloc] init];
    
    if (copy) {
        [copy initWithName:self.name AndZipCode:self.zipcode];
    }
    
    return copy;
}
 
@end
