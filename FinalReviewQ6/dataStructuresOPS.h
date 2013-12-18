//
//  dataStructuresOPS.h
//  FinalReviewQ6
//
//  Created by KHALID ALAHMARI on 12/15/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol dataStructuresOPS <NSObject>


-(void) push: (id) s;

-(id) pop;

-(int) count;

-(void) print;

-(void)insertAtHead:(id) s;


@optional


-(void) insertAtTail:(id) s;

-(id) removeFromHead;

-(id) removeFromTail;





@end
