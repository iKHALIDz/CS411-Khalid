//
//  Station.h
//  MassTransitApp
//
//  Created by KHALID ALAHMARI on 11/10/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>


@interface Station : NSObject

@property (strong, nonatomic) NSString* stationRouteID;
@property (strong, nonatomic) NSString* stationID;
@property (strong, nonatomic) NSString* stationName;
@property  CLLocationCoordinate2D coord;
@property double longitude;
@property double latitude;

@property (readonly) NSString* longitudeString;
@property (readonly) NSString* latitudeString;

//-(id) initWithRouteID: (NSString*)rdID AndStationID:(NSString*)stID AndStationName :(NSString*)stName;


-(id) initWithRouteID: (NSString*)rdID AndStationID:(NSString*)stID AndStationName :(NSString*)stName Andlatitude:(double) lat Andlongitud:(double) lon;

- (NSString*) longitudeString;

- (NSString*) latitudeString;



@end
