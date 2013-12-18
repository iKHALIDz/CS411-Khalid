//
//  stack.h
//  FinalReviewQ6
//
//  Created by KHALID ALAHMARI on 12/15/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "dataStructuresOPS.h"


@interface DataS : NSObject <dataStructuresOPS>

@property (nonatomic,retain) NSMutableArray *container;

- (id)init;


@end
