//
//  main.m
//  Three Dimensional Vector
//
//  Created by KHALID ALAHMARI on 10/12/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vector.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Vector *v1=[[Vector alloc] initWithxComponent:@5 andYComponent:@4 andzComponent:@7];
        
        NSLog(@"%@",v1);
        //NSLog(@"%lu",(unsigned long)[v1 retainCount]);
        
        Vector *v2=[[Vector alloc] initWithxComponent:@5 andYComponent:@5 andzComponent:@3];
        NSLog(@"%@",v2);
        //NSLog(@"%lu",(unsigned long)[v2 retainCount]);
        
        
        Vector *v3=[v1 Addtion:v2];
        NSLog(@"%@",v3);
        [v3 retain];
        NSLog(@"%lu",(unsigned long)[v3 retainCount]);
        
        Vector *v4=[v3 copy];
        NSLog(@"%@",v4);
        NSLog(@"%lu",(unsigned long)[v4 retainCount]);
        
        
        [v1 release];
        [v2 release];

        
    }
    return 0;
}

