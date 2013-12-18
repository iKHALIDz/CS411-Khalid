//
//  Stack.h
//  StackImplementation
//
//  Created by KHALID ALAHMARI on 10/12/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stack : NSObject
{
NSMutableArray* m_array;
int _count;

}

- (void)push:(id)anObject;
- (id)pop;
- (void) print;


@property (nonatomic, readonly) int count;


@end

