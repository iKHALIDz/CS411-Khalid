//
//  ViewController.m
//  BMICalculator
//
//  Created by KHALID ALAHMARI on 10/1/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "ViewController.h"
#import "BMIProfile.h"

@interface ViewController ()

@end

@implementation ViewController 

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

 

- (void)touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event
{
    if ( ! [self isFirstResponder])
    {
        if ([self.WeightTextField isFirstResponder])
        {[self.WeightTextField resignFirstResponder];}
        
        if ([self.HightTextField isFirstResponder])
        {[self.HightTextField resignFirstResponder];}
        
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)GoButtonPressed:(UIButton *)sender {
    
    double wieght = [self.WeightTextField.text doubleValue];
    double hight = [self.HightTextField.text doubleValue];
    
    BMIProfile *P;
    
    P=[BMIProfile alloc];
    P=[P initHight:hight AndWeight:wieght];
    
    double  BMI;
    
    if(!self.SwitchToUSWeightAndMeasures.on)
    {
       BMI=[P BMICalcaution]; 
    }
    else
    {
        BMI=[P BMICalcaution2];

    }
    
    
    
    self.BMILabel.text = [NSString stringWithFormat:@"%.2f",BMI];
    self.BMILabel.hidden=NO;
    

    
}
- (IBAction)SwitchToUSWeightAndMeasuresAction:(UISwitch *)sender {
    if (self.SwitchToUSWeightAndMeasures.on) {
        
        self.HightLabel.text=@"in";
        self.WeightLabel.text=@"lbs";
        self.WeightTextField.text=@"";
        self.HightTextField.text=@"";
        
    }
    else
    {
        self.HightLabel.text=@"cm";
        self.WeightLabel.text=@"kg";
        self.WeightTextField.text=@"";
        self.HightTextField.text=@"";
    }
    
}
@end
