//
//  OCTAListOFAllTimesInAStation.m
//  MassTransitApp
//
//  Created by KHALID ALAHMARI on 11/10/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "OCTAListOFAllTimesInAStation.h"

@interface OCTAListOFAllTimesInAStation ()

@end

@implementation OCTAListOFAllTimesInAStation

@synthesize allTimes,currentStation;

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
    /*
    OCTA *MT=[[OCTA alloc]init];
    self.allTimes=[MT allTimesinGivenStation:self.currentStation];
    */
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

    return [allTimes count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"OCTACellAllTimesID";
    UITableViewCell * cell = [[UITableViewCell alloc]
                              initWithStyle:UITableViewCellStyleSubtitle
                              reuseIdentifier:CellIdentifier];
    
    
    NSString* nextLocation = [NSString stringWithString:[[self.allTimes objectAtIndex: indexPath.row] nextLocation]];
    NSString* time = [NSString stringWithString:[[self.allTimes objectAtIndex: indexPath.row] arrivalTime]];
    
    cell.textLabel.text = [NSString stringWithFormat:@"Route: %@",nextLocation];
    cell.detailTextLabel.text= [NSString stringWithFormat:@"Arrival Time: %@",time];

    
    return cell;
}
@end