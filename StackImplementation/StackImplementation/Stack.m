//
//  Stack.m
//  StackImplementation
//
//  Created by KHALID ALAHMARI on 10/12/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "Stack.h"

@implementation Stack

@synthesize count;

- (id)init
{
    if( self=[super init] )
    {
        m_array = [[NSMutableArray alloc] init];
        count = 0;
    }
    return self;
}


- (void)push:(id)anObject
{
    [m_array addObject:anObject];
    _count = (int)m_array.count;
    
}

- (id)pop
{
    id obj = nil;
    if(m_array.count > 0)
    {
        obj = [m_array lastObject];
        [m_array removeLastObject];
        _count = (int)m_array.count;
    }
    return obj;
}


@end
