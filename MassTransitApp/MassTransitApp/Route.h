//
//  Route.h
//  MassTransitApp
//
//  Created by KHALID ALAHMARI on 11/9/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Route : NSObject

@property (strong, nonatomic) NSString* route_id;
@property (strong, nonatomic) NSString* route_long_name;

-(id) initWithrouteID: (NSString*)rdID AndRouteLongName:(NSString*)rdLongName;


@end
