//
//  Station.m
//  MassTransitApp
//
//  Created by KHALID ALAHMARI on 11/10/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "Station.h"

@implementation Station


@synthesize stationID,stationName,stationRouteID;
@synthesize coord;
@synthesize longitude,latitude;


-(id) initWithRouteID: (NSString*)rdID AndStationID:(NSString*)stID AndStationName :(NSString*)stName Andlatitude:(double) lat Andlongitud:(double) lon;
{
    self=[super init];
    
    if (self)
    {
        self.stationRouteID=rdID;
        self.stationName=stName;
        self.stationID=stID;
        self.latitude=lat;
        self.longitude=lon;
    }
    return  self;
}

- (NSString*) longitudeString{
    double theta = longitude;
    double deg = floor(theta);
    double min = floor((theta - deg) * 60.0);
    double sec = floor((theta - deg - (min/60.0)) * 3600.0);
    return [NSString stringWithFormat: @"%g° %g' %g\"", deg, min, sec];
}

- (NSString*) latitudeString{
    double theta = latitude;
    double deg = floor(theta);
    double min = floor((theta - deg) * 60.0);
    double sec = floor((theta - deg - (min/60.0)) * 3600.0);
    return [NSString stringWithFormat: @"%g° %g' %g\"", deg, min, sec];
}



@end
