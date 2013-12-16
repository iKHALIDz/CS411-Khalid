//
//  Student.h
//  Final Review (Q7)
//
//  Created by KHALID ALAHMARI on 12/14/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MySortable.h"

@interface Student : NSObject <MySortable>
{
    
    
    NSString *_firstName, *_lastName,*_CWID;
}

@property (nonatomic,retain) NSString * firstName;
@property (nonatomic,retain) NSString * lastName;
@property (nonatomic,retain) NSString * CWID;


-(NSString *)firstName;
-(NSString *)lastName;
-(NSString *)CWID;

-(void)setFirstName:(NSString *)firstName;
-(void)setCWID:(NSString *)cwid;
-(void)setLastName:(NSString *)lastName;

-(id)initwithFirstName:(NSString *)firstName AndLastName:(NSString *)lastName AndCWID:(NSString*)cwid;


@end