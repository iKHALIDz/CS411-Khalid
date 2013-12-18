//
//  OCTAListOFALLRoutes.m
//  MassTransitApp
//
//  Created by KHALID ALAHMARI on 11/8/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "OCTAListOFALLRoutes.h"
#import "OCTAListOFAllStationInARoute.h"

@interface OCTAListOFALLRoutes ()

@end

@implementation OCTAListOFALLRoutes

@synthesize allRoutes;

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
    
    OCTA *MC=[[OCTA alloc]init];
    
    self.allRoutes=[MC allRoutes];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.allRoutes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"OCTACellAllRoutesID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:CellIdentifier];
    }
    // Configure the cell...
    
    NSString* route_long_name = [NSString stringWithString:[[self.allRoutes objectAtIndex: indexPath.row] route_long_name]];
    
    cell.textLabel.text = route_long_name;

    
    return cell;
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"OCTAFromRouteToStations" ])
    {
        NSIndexPath *path = [self.tableView indexPathForSelectedRow];
        OCTAListOFAllStationInARoute *MSVC = segue.destinationViewController;
        Route *route=[self.allRoutes objectAtIndex:path.row];
        
        [MSVC setCurrentRoute:route];
        
    }
}

@end
