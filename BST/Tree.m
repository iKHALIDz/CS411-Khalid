//
//  Tree.m
//  BST
//
//  Created by KHALID ALAHMARI on 12/15/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "Tree.h"

@implementation Tree


@synthesize root;


-(id) init
{
    
    self=[super init];
    if(self)
    {
        
        self.root.num=nil;
        self.root.parent=nil;
        self.root.left=nil;
        self.root.right=nil;
    }

    return self;
}

-(void) insert:(NSNumber*) n andNode: (Node*) currentNode
{
    if( self.root == nil)
    {
        root.num = n;
        NSLog(@"RR");
    }
    
    else if ([n doubleValue] < [currentNode.num doubleValue])
    {
        
        NSLog(@"MM");
        [self insert:n andNode: [currentNode left]];
    }
    else if ([n doubleValue] > [currentNode.num doubleValue])
    {
            NSLog(@"NN");
        [self insert:n andNode: [currentNode right]];
    }
}

-(void) print: (Node*) currentNode;
{
    if ( self.root.num != nil )
    {
        NSLog(@"hi from print");
        
        [self  print:currentNode.left];
        NSLog(@"%@", currentNode.num);
        [self print:currentNode.right];
    }
        
}

@end
