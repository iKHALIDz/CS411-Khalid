//
//  stack.m
//  FinalReviewQ6
//
//  Created by KHALID ALAHMARI on 12/15/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "DataS.h"


@implementation DataS


@synthesize container;


- (id)init
{
    if( self=[super init] )
    {
        container = [[NSMutableArray alloc] init];
    }
    return self;
}


-(void) push: (id) s
{
    
    [self.container addObject:s];
}

-(id) pop
{
    id obj=nil;
    if([self count]!=0)
    {
        obj= [container objectAtIndex:self.count-1];
        [container removeLastObject];
    }
    return obj;
}

-(int) count
{
    return (int)[container count];
    
}

-(void) print
{
    //int iCount=(int)[container count];
    
    for(id obj in self.container)
    {
        NSLog(@"%@",obj);
    }
    NSLog(@"---------");
}

-(void)insertAtHead:(id) s
{
    
    [container insertObject:s atIndex:0];
}

-(void)insertAtTail:(id) s
{
    
    [container insertObject:s atIndex:self.count-1];
    
}

-(id)removeFromHead
{
    id obj =[container objectAtIndex:0];
    [container removeObjectAtIndex:0];
    
    return obj;
    
}


@end
