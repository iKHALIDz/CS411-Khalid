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
 
@synthesize currentImage;


UIImageView *OverWeighImage;
UIImageView *UnderWeightImage;
UIImageView *Obese;
UIImageView *HealthyRange;

UIAlertView *alert;


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.HightLabel.text=@"cm";
    self.WeightLabel.text=@"kg";
    
    
    OverWeighImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"OverWeight.png"]];
    UnderWeightImage= [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"UnderWeight.png"]];
    Obese = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Obese.png"]];
    HealthyRange = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"HealthRange.png"]];
    
    
    alert = [[UIAlertView alloc] initWithTitle: @"Alert" message: @"Please Enter a Valid Values!" delegate: nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                      
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


- (IBAction)GoButtonPressed:(UIButton *)sender
{
    
    
    //to resign after cliking "Calculate"
    
    if ( ! [self isFirstResponder])
    {
        if ([self.WeightTextField isFirstResponder])
        {[self.WeightTextField resignFirstResponder];}
        
        if ([self.HightTextField isFirstResponder])
        {[self.HightTextField resignFirstResponder];}
        
    }
    
    double wieght = [self.WeightTextField.text doubleValue];
    double hight = [self.HightTextField.text doubleValue];
    
    BMIProfile *P;
    
    P=[BMIProfile alloc];
    P=[P initHight:hight AndWeight:wieght];
    
    double  BMI;
    
    if(!self.SwitchToUSWeightAndMeasures.on)
    {
       BMI=[P EnglishMetricBMICalcaution];
    }
    else
    {
        BMI=[P USMetricBMICalcaution2];

    }
    
    
    if (BMI<16)
    {
        self.CategoryLabel.text=@"Severe Thinness";
        [self.currentImage addSubview:UnderWeightImage];
    }
    
    
    else if (16 >= BMI &&  BMI < 17)
    {
        self.CategoryLabel.text=@"Moderate Thinness";
        [self.currentImage addSubview:UnderWeightImage];
    }
    
    
    else if (17 <= BMI && BMI< 18.50)
    {
        self.CategoryLabel.text=@"Mild Thinness";
        [self.currentImage addSubview:UnderWeightImage];
    }
    
    else if (18.50 <= BMI &&  BMI< 25)
    {
        self.CategoryLabel.text=@"Normal Range";
        [self.currentImage addSubview:HealthyRange];
        
    }
    
    else if (25 <= BMI  && BMI< 30)
    {
        self.CategoryLabel.text=@"Overweight";
        [self.currentImage addSubview:OverWeighImage];

    }
    
    else if (30 <= BMI && BMI< 35)
    {
        self.CategoryLabel.text=@"Obese Class I (Moderate)";
        [self.currentImage addSubview:Obese];
    }
    
    else if (35 <= BMI && BMI< 40)
    {
        self.CategoryLabel.text=@"Obese Class II (Severe)";
        [self.currentImage addSubview:Obese];
    }
    
    else
    {
        self.CategoryLabel.text=@"Obese Class III (Very Severe)";
        [self.currentImage addSubview:Obese];
        
    }

    
    self.BMILabel.text = [NSString stringWithFormat:@"%.2f",BMI];
    
    
    
    //Checking in case if te user didn't enter a valid value
    
    if([self.HightTextField.text length]== 0 ||  [self.WeightTextField.text length]== 0)
    {
        
        self.BMILabel.hidden=YES;
        self.CategoryLabel.hidden=YES;
        self.currentImage.hidden=YES;
         
        [alert show];

    }
    
    else
    {
    self.BMILabel.hidden=NO;
    self.CategoryLabel.hidden=NO;
    self.currentImage.hidden=NO;
    }
    
}


// Switching from US metric to English Metric and vise versa


- (IBAction)SwitchToUSWeightAndMeasuresAction:(UISwitch *)sender {
    if (self.SwitchToUSWeightAndMeasures.on) {
        
        self.HightLabel.text=@"in";
        self.WeightLabel.text=@"lbs";
        self.WeightTextField.text=@"";
        self.HightTextField.text=@"";
        self.BMILabel.hidden=YES;
        self.CategoryLabel.hidden=YES;
        self.currentImage.hidden=YES;
        
    }
    
    else
    {
        self.HightLabel.text=@"cm";
        self.WeightLabel.text=@"kg";
        self.WeightTextField.text=@"";
        self.HightTextField.text=@"";
        self.BMILabel.hidden=YES;
        self.CategoryLabel.hidden=YES;
        self.currentImage.hidden=YES;
        
    }
    
}
@end
