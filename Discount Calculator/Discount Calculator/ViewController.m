//
//  ViewController.m
//  Discount Calculator
//
//  Created by KHALID ALAHMARI on 10/3/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController


Profile *P;



- (void)leftSwipeSegue:(UIGestureRecognizer*)recognizer
{
    [self performSegueWithIdentifier:@"FromMainToGraph" sender:self];
}


- (void)viewDidLoad
{
    P=[[Profile alloc] init];
    
    [super viewDidLoad];
    
    UISwipeGestureRecognizer *leftSwip = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(leftSwipeSegue:)];
    
    leftSwip.direction=UISwipeGestureRecognizerDirectionLeft; // choose the direction of the gesture
    [self.view addGestureRecognizer:leftSwip]; // Adding the gesture to the view 

                                          
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

- (IBAction)DiscountCalculate:(UIButton *)sender{
    
    double price=[self.PriceTextField.text doubleValue];
    double DollarsOff=[self.DollarsOffTextField.text doubleValue];
    double discount=[self.DiscountTextField.text doubleValue];
    double AddDisc =[self.AdditionlDiscTextField.text doubleValue];
    double tax = [self.TaxTextField.text doubleValue];
    
    P.OriginalPrice = price + (price * (tax/100));

    self.OriginalPriceLabel.text=[NSString stringWithFormat:@"%.2f",P.OriginalPrice];
    self.OriginalPriceLabel.hidden=NO;
    
    double DiscountlPriceWithoutTax= (P.OriginalPrice-DollarsOff) - ( (P.OriginalPrice-DollarsOff)* ((discount+AddDisc))/100);
    P.DiscountPrice=DiscountlPriceWithoutTax + (DiscountlPriceWithoutTax * (tax/100));
    
    self.DiscountPriceLabel.text=[NSString stringWithFormat:@"%.2f",P.DiscountPrice];
    self.DiscountPriceLabel.hidden=NO;
    
}


- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
        GraphViewController *GVC=[segue destinationViewController];
        [GVC setCurrentProfile:P];
    
}


    
    
            
        
        @end
