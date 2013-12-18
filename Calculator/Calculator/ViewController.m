//
//  ViewController.m
//  Calculator
//
//  Created by KHALID ALAHMARI on 10/19/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end


@implementation ViewController


@synthesize runningTotal,currentNumber,whichMethod,isOperand,isEqualisPressed;

- (void)viewDidLoad
{
    [super viewDidLoad];
    runningTotal=0.0;
    currentNumber=0.0;
    isEqualisPressed=NO;
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)operands:(UIButton *)sender
{
    isOperand=YES;
    NSLog(@"digit");
    
    self.screenLabel.text=[self.screenLabel.text stringByAppendingString:sender.currentTitle];
    
    currentNumber=[self.screenLabel.text doubleValue];
    
}


- (IBAction)binaryOperation:(UIButton *)sender
{
    
    whichMethod= sender.currentTitle;
    
    self.screenLabel.text=[NSString stringWithFormat:@"%.2f",runningTotal];
    
    if([whichMethod isEqualToString:@"+"])
    {
        if(isEqualisPressed){
        NSLog(@"+");
        runningTotal=runningTotal+currentNumber;
        NSLog(@"Current Number %.2f",currentNumber);
        NSLog(@"Running Total %.2f",runningTotal);
        }
    }

    else if([whichMethod isEqualToString:@"-"])
    {
        if(isEqualisPressed){
        NSLog(@"-");
            runningTotal=runningTotal-currentNumber;
            NSLog(@"Current Number %.2f",currentNumber);
            NSLog(@"Running Total %.2f",runningTotal);
        }

    }
    
    else if([whichMethod isEqualToString:@"/"])
    {
        if(isEqualisPressed){
        NSLog(@"/");
            runningTotal=runningTotal/currentNumber;
            NSLog(@"Current Number %.2f",currentNumber);
            NSLog(@"Running Total %.2f",runningTotal);
        }
    }
    
    else
    {
        if(isEqualisPressed){
        NSLog(@"X");
        runningTotal=runningTotal*currentNumber;
        NSLog(@"Current Number %.2f",currentNumber);
        NSLog(@"Running Total %.2f",runningTotal);
        }
    }

    currentNumber=0;
    self.screenLabel.text=@"";
}

- (IBAction)Equal:(UIButton *)sender {
        
    if(runningTotal==0)
    {
        self.screenLabel.text=[NSString stringWithFormat:@"%.2f",runningTotal+currentNumber];
        NSLog(@"Equals--runningTotal==0");
    }

    else
    {
        if([whichMethod isEqualToString:@"+"])
        {
            NSLog(@"+");
                runningTotal=runningTotal+currentNumber;
                NSLog(@"Current Number %.2f",currentNumber);
                NSLog(@"Running Total %.2f",runningTotal);
        }
        
        else if([whichMethod isEqualToString:@"-"])
        {
            NSLog(@"-");
      
                runningTotal=runningTotal-currentNumber;
                NSLog(@"Current Number %.2f",currentNumber);
                NSLog(@"Running Total %.2f",runningTotal);
        }
        
        else if([whichMethod isEqualToString:@"/"])
        {
            
            runningTotal=runningTotal/currentNumber;
            NSLog(@"Current Number %.2f",currentNumber);
            NSLog(@"Running Total %.2f",runningTotal);
        }
        
        else
        {
            NSLog(@"X");
            runningTotal=runningTotal*currentNumber;
            NSLog(@"Current Number %.2f",currentNumber);
            NSLog(@"Running Total %.2f",runningTotal);
        }
        
        self.screenLabel.text=[NSString stringWithFormat:@"%.2f",runningTotal];
        NSLog(@"Current Number %.2f",currentNumber);
        NSLog(@"Running Total %.2f",runningTotal);
        //currentNumber=runningTotal;
        isEqualisPressed=YES;
   }

    self.screenLabel.text=[NSString stringWithFormat:@"%.2f",runningTotal];
    NSLog(@"Current Number %.2f",currentNumber);
    NSLog(@"Running Total %.2f",runningTotal);
    
}


- (IBAction)Clear:(UIButton *)sender {
    currentNumber=0;
    runningTotal=0;
    self.screenLabel.text=@"0";
}

@end
