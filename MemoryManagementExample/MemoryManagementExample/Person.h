//
//  Person.h
//  MemoryManagementExample
//
//  Created by KHALID ALAHMARI on 10/10/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject <NSCopying>
{
    
    NSString * _name;
    NSNumber * _zipCode;
    
}


-(id) initWithName : (NSString*) aName AndZipCode :(NSNumber*) aZipCode;

//getter
-(NSString*)name;
-(NSNumber*)zipcode;


//setter
-(void)setName :(NSString*) aName AndZipCode :(NSNumber*) aZipCode;


-(NSString*) description;

-(void) dealloc;


@end
