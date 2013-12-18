//
//  Class1.m
//  FinalReview-ProtocolExample
//
//  Created by KHALID ALAHMARI on 12/16/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "Class1.h"
#import "Class2.h"

@implementation Class1




-(void)imDone
{
    
    NSLog(@"I'm Done");
}


-(void)Classstart
{
    Class2 *c4= [[Class2 alloc]init];
    
    c4.delegate=self;
    
    [c4 start];
    
}

@end
