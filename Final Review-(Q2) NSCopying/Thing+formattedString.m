//
//  Thing+formattedString.m
//  Final Review-(Q2) NSCopying
//
//  Created by KHALID ALAHMARI on 12/14/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "Thing+formattedString.h"

@implementation Thing (formattedString)



-(NSString *) formattedString
{
    
    NSString *string=[NSString stringWithFormat:@"%.2f",[[self data] doubleValue]];
    
    return string;
}

@end
