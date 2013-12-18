//
//  Node.m
//  BST
//
//  Created by KHALID ALAHMARI on 12/15/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "Node.h"

@implementation Node

@synthesize left,right,parent,num;


-(id) initWithNum: (NSNumber*)n AndLeft: (Node*) L AndRight: (Node*) r AndParent: (Node*) p;
{
    self = [super init];
    
    if(self)
    {
        self.num = n;
        self.left = L;
        self.right=r;
        self.parent=p;
    }
    return self;
}

@end
