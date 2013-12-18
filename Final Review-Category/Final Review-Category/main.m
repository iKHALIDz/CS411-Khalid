//
//  main.m
//  Final Review-Category
//
//  Created by KHALID ALAHMARI on 12/14/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+camelCasing.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSString *input=@"hello world this is khalid!";
        
        NSString *output=[input camelCaseString];
        
        NSLog(@"%@",output);
        
        
    }
    return 0;
}


