//
//  main.m
//  Testing
//
//  Created by KHALID ALAHMARI on 9/26/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>



#define _ABS( x ) ((x) < (0) ? (-x) : (x))
#define NUM_TEXTFIELDS 3

int main(int argc, const char * argv[])
{

    @autoreleasepool
    {
        NSUInteger tag = 2;
        NSUInteger nextTag = (tag + 1) % NUM_TEXTFIELDS;
        NSUInteger prevTag = (_ABS((tag - 1))) % NUM_TEXTFIELDS;
        
        NSLog(@"NextTag %ld PreviousTag %ld",(unsigned long)nextTag,(unsigned long)prevTag);
    }
    
    return 0;
}