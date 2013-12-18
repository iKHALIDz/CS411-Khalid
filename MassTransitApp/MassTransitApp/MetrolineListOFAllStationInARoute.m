//
//  MetrolineListOFAllStationInARoute.m
//  MassTransitApp
//
//  Created by KHALID ALAHMARI on 11/10/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "MetrolineListOFAllStationInARoute.h"
#import "MSDetailViewController.h"



@interface MetrolineListOFAllStationInARoute ()

@end

@implementation MetrolineListOFAllStationInARoute


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
    
    //self.currentRoute=[[Route alloc]initWithrouteID:@"91 Line" AndRouteLongName:nil];
    
    Metrolink *MT=[[Metrolink alloc]init];
    self.allStations=[MT allStationInGivenRoute:self.currentRoute];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [allStations count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"MetrolineCellAllStationsID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    NSString* stop = [NSString stringWithString:[[self.allStations objectAtIndex: indexPath.row] stationName]];
    
    cell.textLabel.text = stop;
    
    return cell;
    
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"MetrolineFromRouteToTimes" ])
    {
        NSIndexPath *path = [self.tableView indexPathForSelectedRow];
         MSDetailViewController *MSVC = segue.destinationViewController;
        Station *station=[self.allStations objectAtIndex:path.row];
                
        [MSVC setCurrentStation:station];
    }
}

@end
