//
//  Class2.m
//  FinalReview-ProtocolExample
//
//  Created by KHALID ALAHMARI on 12/16/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "Class2.h"
#import "Done.h"
@implementation Class2

@synthesize delegate;

- (void) start
{
    NSLog(@"Started");
    [self.delegate imDone];
}
@end
