//
//  Thing.h
//  Final Review-(Q2) NSCopying
//
//  Created by KHALID ALAHMARI on 12/14/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Thing : NSObject <NSCopying>
{
    NSNumber *_data;
}


-(id) initwithNumber:(NSNumber*) num;
-(NSNumber*) data;
-(void) setData :(NSNumber*) num;

@end
