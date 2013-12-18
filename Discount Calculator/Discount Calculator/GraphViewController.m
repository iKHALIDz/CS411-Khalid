//
//  GraphViewController.m
//  Discount Calculator
//
//  Created by KHALID ALAHMARI on 10/3/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "GraphViewController.h"

@interface GraphViewController ()

@end

@implementation GraphViewController

@synthesize CurrentProfile;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)RightSwipeSegue:(UIGestureRecognizer*)recognizer
{
    [self performSegueWithIdentifier:@"FromGraphToMain" sender:self];
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
        
    ((BarChart*)self.view).OR = CurrentProfile.OriginalPrice;
    
    ((BarChart*)self.view).Dis = CurrentProfile.DiscountPrice;
    
    
    
    NSLog(@"Graph %.2f",CurrentProfile.OriginalPrice);
    NSLog(@"Graph %.2f",CurrentProfile.DiscountPrice);
    
    NSLog(@"BAR %.2f",((BarChart*)self.view).OR);
    NSLog(@"BAR %.2f",((BarChart*)self.view).Dis);
    
    UISwipeGestureRecognizer *rightSwip = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(RightSwipeSegue:)];
    
    UISwipeGestureRecognizer *leftSwip = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(RightSwipeSegue:)];
    
    
    rightSwip.direction=UISwipeGestureRecognizerDirectionRight; // choose the direction of the gesture
    [self.view addGestureRecognizer:rightSwip]; // Adding the gesture to the view'
    
    leftSwip.direction=UISwipeGestureRecognizerDirectionLeft; // choose the direction of the gesture
    [self.view addGestureRecognizer:leftSwip]; // Adding the gesture to the view
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
