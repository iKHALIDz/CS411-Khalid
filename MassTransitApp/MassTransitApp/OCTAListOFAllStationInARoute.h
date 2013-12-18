//
//  OCTAListOFAllStationInARoute.h
//  MassTransitApp
//
//  Created by KHALID ALAHMARI on 11/10/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Station.h"
#import "Route.h"
#import "OCTA.h"


@interface OCTAListOFAllStationInARoute : UITableViewController

@property (nonatomic,retain) NSArray *allStations;
@property (nonatomic,retain) Route *currentRoute;

@end
