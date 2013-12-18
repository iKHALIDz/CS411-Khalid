//
//  MSDetailViewController.m
//  SQLiteTableViewWithDetail
//
//  Created by Michael Shafae on 4/16/13.
//  Copyright (c) 2013 Michael Shafae. All rights reserved.
//

#import "MSDetailViewController.h"

@interface MSDetailViewController ()

@end

@implementation MSDetailViewController

@synthesize currentStation;
@synthesize map;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        // Custom initialization
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        }
    return self;
}



- (void)viewDidLoad
{
    

    self.coordLabel.text = [NSString stringWithFormat: @"%@, %@", self.currentStation.latitudeString, self.currentStation.longitudeString];
    
   self.StaionLabel.text=currentStation.stationName;
    
    
    
    MKCoordinateRegion myRegion;
    
    //center
    CLLocationCoordinate2D center;
    center.latitude=currentStation.latitude;
    center.longitude=currentStation.longitude;
    
    //span
    MKCoordinateSpan span;
    span.latitudeDelta=0.01f;
    span.longitudeDelta=0.01f;

    
    myRegion.center=center;
    myRegion.span=span;
    
    [map setRegion:myRegion animated:YES];
    
    CLLocationCoordinate2D loc;
    loc.latitude=currentStation.latitude;
    loc.longitude=currentStation.longitude;
    MapAnnotation *annot=[[MapAnnotation alloc]init];
    
    annot.coordinate=loc;
    annot.title = self.currentStation.stationName;
    annot.subtitle=nil;

    

    [super viewDidLoad];
    [self.map addAnnotation:annot];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)viewDidUnload {
  [self setMap:nil];
  [super viewDidUnload];
    
    

}
@end
