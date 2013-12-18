//
//  MapAnnotation.h
//  MassTransitApp
//
//  Created by KHALID ALAHMARI on 11/12/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>


@interface MapAnnotation : NSObject <MKAnnotation>

@property (nonatomic) CLLocationCoordinate2D coordinate;
@property (nonatomic,copy) NSString *subtitle;
@property (nonatomic,copy) NSString *title;

@end
