//
//  main.m
//  Final Review-(Q2) NSCopying
//
//  Created by KHALID ALAHMARI on 12/14/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Thing.h"
#import "Thing+formattedString.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        Thing *T=[[Thing alloc]initwithNumber:@55.3333];
        
        
        //NSLog(@"%lu",(unsigned long)[T retainCount]);
        
        NSLog(@"%@",[T formattedString]);
        
        
        Thing *T2=[T copy];
        
        NSLog(@"%@",[T2 formattedString]);
        
    }
    
    
    return 0;
}

