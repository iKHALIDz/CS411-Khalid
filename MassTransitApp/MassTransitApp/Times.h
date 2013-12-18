//
//  Times.h
//  MassTransitApp
//
//  Created by KHALID ALAHMARI on 11/10/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Times : NSObject

@property (nonatomic,retain) NSString * staionID;
@property (nonatomic,retain) NSString * arrivalTime;
@property (nonatomic,retain) NSString * nextLocation;



-(id) initWithStaionID: (NSString*)stID AndnextLocation:(NSString*)stnextLocation AndarrivalTime :(NSString *) DT;


@end
