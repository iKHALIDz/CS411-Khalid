//
//  Tree.h
//  BST
//
//  Created by KHALID ALAHMARI on 12/15/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"


@interface Tree : NSObject

@property(retain) Node *root;


-(id) init;
-(void) insert:(NSNumber*) n andNode: (Node*) currentNode;
-(void) print: (Node*) currentNode;


@end
