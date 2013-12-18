//
//  main.m
//  NSCopyingProtocolExample
//
//  Created by KHALID ALAHMARI on 10/12/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        
        Person *p1=[[Person alloc]initWithFirstname:@"Khalid" andLastname:@"Alahmari"];
        [p1 setBirthday:[NSDate date]];
    
        
        
        NSLog(@"%@",p1);
        NSLog(@"%lu",(unsigned long)[p1 retainCount]);
        Person *p2=[p1 retain];
        
 
        NSLog(@"%@",p2);
        NSLog(@"%lu",(unsigned long)[p2 retainCount]);
        
        Person *p3=[p1 copy];
        NSLog(@"%lu",(unsigned long)[p2 retainCount]);
        
        NSLog(@"%@",p3);
        NSLog(@"%lu",(unsigned long)[p3 retainCount]);
    }
    return 0;
    
}

