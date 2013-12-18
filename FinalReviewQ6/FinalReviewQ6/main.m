//
//  main.m
//  FinalReviewQ6
//
//  Created by KHALID ALAHMARI on 12/15/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DataS.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        DataS *S=[[DataS alloc]init];
        
        [S push:@"Khalid"];
        [S push:@"Omar"];
        [S push:@"Rakan"];
        
        [S print];
        
        [S insertAtHead:@"Mohammed"];
        
        [S print];
        
        [S insertAtTail:@"Majeed"];
        [S print];
        
        NSString *oj=[S removeFromHead];
        
        [S print];

    }
    return 0;
}

