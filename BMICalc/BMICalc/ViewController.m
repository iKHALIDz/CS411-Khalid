//
//  ViewController.m
//  BMICalc
//
//  Created by KHALID ALAHMARI on 9/18/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "ViewController.h"
#import "PersonProfile.h"

@interface ViewController ()
 
@end
 
@implementation  ViewController



- (void)touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event
{
    //
    if ( ! [self isFirstResponder])
    {
        if ([self.WeightTextField isFirstResponder])
        {[self.WeightTextField resignFirstResponder];}
        
        if ([self.HightTextField isFirstResponder])
        {[self.HightTextField resignFirstResponder];}
        
        if ([self.NameTextField isFirstResponder])
        {[self.NameTextField resignFirstResponder];}
    }
}




- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)GoButtonPressed:(UIButton *)sender
{
    
    double wieght = [self.WeightTextField.text doubleValue];
    double hight = [self.HightTextField.text doubleValue];
    
 
    NSString *N=[self.NameTextField.text description];
    
    PersonProfile *P;
    
    //P=[P initWithName:@"N" AndHight:hight AndWeight:wieght];
    
    
    P=[[PersonProfile alloc] init];
    P.Hight=hight;
    P.Weight=wieght;
    P.Name=N;
    
    
    double  BMI=[P BMICalcaution:P];
    
    
    self.BMILabel.text = [NSString stringWithFormat:@"%.2f",BMI];
    self.BMILabel.hidden=NO;

}

@end