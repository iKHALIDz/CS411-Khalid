//
//  OCTAListOFAllStationInARoute.m
//  MassTransitApp
//
//  Created by KHALID ALAHMARI on 11/10/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "OCTAListOFAllStationInARoute.h"
#import "MSDetailViewController.h"


@interface OCTAListOFAllStationInARoute ()

@end

@implementation OCTAListOFAllStationInARoute

@synthesize allStations;
@synthesize currentRoute;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    OCTA *OC=[[OCTA alloc]init];
    self.allStations=[OC allStationInGivenRoute:self.currentRoute];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return [allStations count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"OCTACellAllStationsID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    
    
    NSString* stop = [NSString stringWithString:[[self.allStations objectAtIndex: indexPath.row] stationName]];
    

    cell.textLabel.text = stop;
    
    
    return cell;

}


- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"OCTAFromRouteToTimes"])
    {
        NSIndexPath *path = [self.tableView indexPathForSelectedRow];
         MSDetailViewController *MSVC = segue.destinationViewController;
        Station *station=[self.allStations objectAtIndex:path.row];
        [MSVC setCurrentStation:station];
    }
}


@end

