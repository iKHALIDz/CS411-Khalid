//
//  Person.h
//  NSCopyingProtocolExample
//
//  Created by KHALID ALAHMARI on 10/12/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject <NSCopying>
{
    NSString* _firstname;
    NSString* _lastname;
    NSDate* _birthday;
}

-(id) initWithFirstname: (NSString*) firstname andLastname: (NSString*) lastname;

-(NSDate*) birthday;
-(void) setBirthday: (NSDate*)aDay;

-(NSString*) firstname;
-(void) setFirstname: (NSString* ) firstname;

-(NSString*) lastname;
-(void) setLastname: (NSString*) lastname;


@property (nonatomic, retain) NSDate* birthday;
@property (nonatomic, retain) NSString* firstname;
@property (nonatomic, retain) NSString* lastname;


-(NSString*) description;



@end


