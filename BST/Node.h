//
//  Node.h
//  BST
//
//  Created by KHALID ALAHMARI on 12/15/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject


@property (retain) Node* parent;
@property (retain) Node* left;
@property (retain) Node* right;
@property (retain) NSNumber* num;

-(id) initWithNum: (NSNumber*)n AndLeft: (Node*) L AndRight: (Node*) r AndParent: (Node*) p;

@end
