//
//  ViewController.m
//  Database Example
//
//  Created by KHALID ALAHMARI on 11/5/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize routes;


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.routes = [[Database database] selectRoutes];

    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
