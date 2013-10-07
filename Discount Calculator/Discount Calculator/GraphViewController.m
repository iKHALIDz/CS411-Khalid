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
@synthesize BH;




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
    
    
    NSLog(@"%.2f",CurrentProfile.OriginalPrice);
    NSLog(@"%.2f",CurrentProfile.DiscountPrice);
    
    
    BH.CurrentProfile2.OriginalPrice=CurrentProfile.OriginalPrice;
    BH.CurrentProfile2.DiscountPrice=CurrentProfile.DiscountPrice;
    
    
    
    NSLog(@"%.2f",BH.CurrentProfile2.OriginalPrice);
    NSLog(@"%.2f",BH.CurrentProfile2.DiscountPrice);
    
    
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
