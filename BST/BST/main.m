//
//  main.m
//  BST
//
//  Created by KHALID ALAHMARI on 12/15/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tree.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        Tree* tree1 = [[Tree alloc] init];
        
        [tree1 insert:@5 andNode: tree1.root];
        [tree1 insert:@2 andNode: tree1.root];
        [tree1 insert:@7 andNode: tree1.root];
        
        [tree1 print: tree1.root];
        
        
    }
    return 0;
}

