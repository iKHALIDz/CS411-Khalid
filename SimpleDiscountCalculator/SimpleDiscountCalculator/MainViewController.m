//
//  ViewController.m
//  SimpleDiscountCalculator
//
//  Created by KHALID ALAHMARI on 10/8/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "MainViewController.h"


@interface MainViewController ()

@end

@implementation MainViewController


@synthesize discountProfile;



- (void)viewDidLoad
{
    
    [super viewDidLoad];

    if (discountProfile!=nil) // if the user swiped back to the main view from the graph view 
    {
        self.PriceTextField.text=[NSString stringWithFormat:@"%.2f",discountProfile.price];
        self.DollarsOffTextField.text=[NSString stringWithFormat:@"%.2f",discountProfile.dollarsOff];
        self.DiscountTextField.text=[NSString stringWithFormat:@"%.2f",discountProfile.discountPercentage];
        self.AdditionlDiscTextField.text=[NSString stringWithFormat:@"%.2f",discountProfile.additionalDiscountPercentage];
        self.TaxTextField.text=[NSString stringWithFormat:@"%.2f",discountProfile.taxPercentage];
        self.OriginalPriceLabel.text=[NSString stringWithFormat:@"%.2f",discountProfile.originalPrice];
        self.DiscountPriceLabel.text=[NSString stringWithFormat:@"%.2f",discountProfile.discountPrice];
        self.OriginalPriceLabel.hidden=NO;
        self.DiscountPriceLabel.hidden=NO;
    }

    
    UISwipeGestureRecognizer *leftSwip = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(leftSwipeSegue:)];
    
    leftSwip.direction=UISwipeGestureRecognizerDirectionLeft; // choose the direction of the gesture
    [self.view addGestureRecognizer:leftSwip]; // Adding the gesture to the view
    
}


- (void)touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event
{
    if (! [self isFirstResponder])
    {
        if ([self.PriceTextField isFirstResponder]) {
            [self.PriceTextField resignFirstResponder];
        }
        if ([self.DollarsOffTextField isFirstResponder]) {
            [self.DollarsOffTextField resignFirstResponder];
        }
        if ([self.DiscountTextField isFirstResponder]) {
            [self.DiscountTextField resignFirstResponder];
        }
        if ([self.AdditionlDiscTextField isFirstResponder]) {
            [self.AdditionlDiscTextField resignFirstResponder];
        }
        if ([self.TaxTextField isFirstResponder]) {
            [self.TaxTextField resignFirstResponder];
        }
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)leftSwipeSegue:(UIGestureRecognizer*)recognizer
{
    [self performSegueWithIdentifier:@"FromMainToGraph" sender:self];
}


- (IBAction)DiscountCalculate:(UIButton *)sender
{
    //in case if the user pressed calculate without entring the "price"
     if([self.PriceTextField.text length]== 0 || [self.PriceTextField.text doubleValue]==0)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle: @"Alert" message: @"Please Enter a Valid values for the Price $!" delegate: nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
          [alert show];
    }
    
    else
    {
    discountProfile=[[DiscountProfile alloc] init];
    
    
    self.discountProfile.price = [self.PriceTextField.text doubleValue];
    self.discountProfile.taxPercentage= [self.TaxTextField.text doubleValue];
    self.discountProfile.discountPercentage = [self.DiscountTextField.text doubleValue];
    self.discountProfile.additionalDiscountPercentage=[self.AdditionlDiscTextField.text doubleValue];
    self.discountProfile.dollarsOff=[self.DollarsOffTextField.text doubleValue];
    
    [discountProfile discountAmountCalculator];
    


    self.OriginalPriceLabel.text=[NSString stringWithFormat:@"%.2f",discountProfile.originalPrice];
    
    self.DiscountPriceLabel.text=[NSString stringWithFormat:@"%.2f",discountProfile.discountPrice];
    
    self.OriginalPriceLabel.hidden=NO;
    self.DiscountPriceLabel.hidden=NO;
    }
    
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    GraphViewController *GVC=[segue destinationViewController];
    
    [GVC setGraphDiscountProfile:discountProfile];
}

@end
