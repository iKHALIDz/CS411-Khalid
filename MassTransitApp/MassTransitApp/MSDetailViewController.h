//
//  MSDetailViewController.h
//  SQLiteTableViewWithDetail
//
//  Created by Michael Shafae on 4/16/13.
//  Copyright (c) 2013 Michael Shafae. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "Station.h"
#import "MapAnnotation.h"


@interface MSDetailViewController : UIViewController

@property (nonatomic,retain) Station *currentStation;

@property (weak, nonatomic) IBOutlet MKMapView *map;

@property (weak, nonatomic) IBOutlet UILabel *coordLabel;

@property (weak, nonatomic) IBOutlet UILabel *StaionLabel;




@end
