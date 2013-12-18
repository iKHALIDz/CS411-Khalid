//
//  main.m
//  Final Review-Protocols (Q4)
//
//  Created by KHALID ALAHMARI on 12/14/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "class1.h"
#import "Class2.h"




int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        class1 *c1=[[class1 alloc]init];
        Class2 *c2=[[Class2 alloc]init];
        
        
        c2.delegate=c1;
        
        [c2 start];
        
        
        
        
    }
    return 0;
}

