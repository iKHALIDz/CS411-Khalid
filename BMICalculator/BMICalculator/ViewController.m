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

NSArray * BMIRangArray;
NSArray *Category;
//NSDictionary *BMICategory;

@synthesize currentImage;



UIImageView *OverWeighImage;
UIImageView *UnderWeightImage;
UIImageView *Obese;
UIImageView *HealthyRange;


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //UnderWeight=[[UIimage alloc] initw
    
    
    OverWeighImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"OverWeight.png"]];
    UnderWeightImage= [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"UnderWeight.png"]];
    Obese = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Obese.png"]];
    HealthyRange = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"HealthRange.png"]];

                         
   /* Category= [NSArray arrayWithObjects:
               @"Severe Thinness",
               @"Moderate Thinness",
               @"Mild Thinness",
               @"Normal Range",
               @"Overweight",
               @"Obese Class I (Moderate)",
               @"Obese Class II (Severe)",
               @"Obese Class III (Very Severe)", nil];
    
    
    BMIRangArray = [NSArray arrayWithObjects:
                    [NSValue valueWithRange: NSMakeRange(0,16)],
                    [NSValue valueWithRange: NSMakeRange(16,0.99)],
                    [NSValue valueWithRange: NSMakeRange(17,18.49)],
                    [NSValue valueWithRange: NSMakeRange(18.50,24.99)],
                    [NSValue valueWithRange: NSMakeRange(25,29.99)],
                    [NSValue valueWithRange: NSMakeRange(30,34.99)],
                    [NSValue valueWithRange: NSMakeRange(35,39)],
                    [NSValue valueWithRange: NSMakeRange(39,50)],nil];
    
    BMICategory = [[NSDictionary alloc] initWithObjects:Category forKeys:BMIRangArray];
    
    */
    
                      
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
    
    //self.CategoryLabel.text= [BMICategory objectForKey: ];
    
    

    
    //Checking
    if([self.HightTextField.text length]!= 0 && [self.WeightTextField.text length]!= 0)
    {
        self.BMILabel.hidden=NO;
        self.CategoryLabel.hidden=NO;
        self.currentImage.hidden=NO;

    }

    //self.BMILabel.hidden=NO;
    //self.CategoryLabel.hidden=NO;
}

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
