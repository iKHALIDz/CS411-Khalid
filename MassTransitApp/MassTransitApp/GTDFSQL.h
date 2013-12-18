//
//  GTDFSQL.h
//  MassTransitApp
//
//  Created by KHALID ALAHMARI on 11/8/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "SQLiteDB.h"
#import "Route.h"
#import "Station.h"
#import "Times.h"



@interface GTDFSQL : SQLiteDB
{
    
    NSString* _agencyName;
}


@property (readonly) NSString* agencyName;


-(NSArray *) allRoutes;
-(NSArray *) allStationInGivenRoute :(Route *) route;
//-(NSArray *) allTimesinGivenStation :(Station*) station;


@end
