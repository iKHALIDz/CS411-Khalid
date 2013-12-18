//
//  NSString+camelCasing.m
//  Final Review-Category
//
//  Created by KHALID ALAHMARI on 12/14/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "NSString+camelCasing.h"

@implementation NSString (camelCasing)

-(NSString *) camelCaseString
{
   
    
    NSString *Capital_output=[self capitalizedString];
    
    NSArray *array;
    
    array=[Capital_output componentsSeparatedByString:@" "];
    
    
    NSString *WithoutWhiteSpaces=[ array componentsJoinedByString:nil];
    
    NSString* firstletter=[[WithoutWhiteSpaces substringToIndex:1] lowercaseString];

    
    NSString *final_Output=[WithoutWhiteSpaces stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:firstletter];
    
    return final_Output;
}
@end


// capitalizedString
// componentsSeparatedByString
// componentsJoindByString
// substringtoindex
// lowercaseString
// stringByReplacingCharactersInRange:NSMakeRange
