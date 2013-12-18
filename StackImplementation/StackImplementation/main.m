//
//  main.m
//  StackImplementation
//
//  Created by KHALID ALAHMARI on 10/12/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Stack.h"

int main(int argc, const char * argv[])
{
    
    Stack *stack1;
    
    [stack1 push:[NSString stringWithFormat:@"Khalid"]];
    [stack1 push:[NSString stringWithFormat:@"Omar"]];
    [stack1 push:[NSString stringWithFormat:@"Abdulrahman"]];
    
    
    @autoreleasepool {
        
    }
    return 0;
}

