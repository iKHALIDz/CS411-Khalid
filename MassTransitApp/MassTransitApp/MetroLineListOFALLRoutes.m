//
//  MetroLineListOFALLRoutes.m
//  TranSysApp
//
//  Created by KHALID ALAHMARI on 11/5/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "MetroLineListOFALLRoutes.h"
#import "MetrolineListOFAllStationInARoute.h"


@interface MetroLineListOFALLRoutes ()

@end

@implementation MetroLineListOFALLRoutes


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
    
    Metrolink *MC=[[Metrolink alloc]init];
    
    self.allRoutes=[MC allRoutes];

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
    return [self.allRoutes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"MetrolineCellAllRoutesID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:CellIdentifier];
    }
    
    NSString* route = [NSString stringWithString:[[self.allRoutes objectAtIndex: indexPath.row] route_id]];
    
   
    cell.textLabel.text = route;
    
    return cell;
}


- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"MetrolineFromRouteToStations" ])
    {
        NSIndexPath *path = [self.tableView indexPathForSelectedRow];
        MetrolineListOFAllStationInARoute *MSVC = segue.destinationViewController;
        Route *route=[self.allRoutes objectAtIndex:path.row];
        
        [MSVC setCurrentRoute:route];
        
    }
}





@end

