//
//  GraphViewController.m
//  SimpleDiscountCalculator
//
//  Created by KHALID ALAHMARI on 10/8/13.
//  Copyright (c) 2013 Khalid. All rights reserved.


#import "GraphViewController.h"

@interface GraphViewController ()

@end


@implementation GraphViewController

@synthesize graphDiscountProfile;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    UISwipeGestureRecognizer *rightSwip = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(RightSwipeSegue:)];
    
    UISwipeGestureRecognizer *leftSwip = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(RightSwipeSegue:)];
    
    
    rightSwip.direction=UISwipeGestureRecognizerDirectionRight; // choose the direction of the gesture
    [self.view addGestureRecognizer:rightSwip]; // Adding the gesture to the view'
    
    leftSwip.direction=UISwipeGestureRecognizerDirectionLeft; // choose the direction of the gesture
    [self.view addGestureRecognizer:leftSwip]; // Adding the gesture to the view
    
    //Passing Data to Barchar UIView //
    ((BarChart*) self.view).barchartDiscountProfile=self.graphDiscountProfile;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)RightSwipeSegue:(UIGestureRecognizer*)recognizer
{
    [self performSegueWithIdentifier:@"FromGraphToMain" sender:self];
    
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    MainViewController *MVC=[segue destinationViewController];
    
    [MVC setDiscountProfile:graphDiscountProfile];
    
}

@end
