//
//  ViewController.m
//  SimpleCalculator
//
//  Created by KHALID ALAHMARI on 10/21/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,retain) CalculatorLogic *cLogic; // The model object .. 
@property (assign) BOOL isUserEnteredDecimalPoint; // a flage  to check whether the user enter a decimal point or not.
@property (assign) BOOL isUserPressedOperartion; //  a flage  to check whether the user enter a pressed operation or not.
@property (assign) BOOL isUserPressedOperand; //  a flage  to check whether the user enter a pressed operand or not.
@property (assign) BOOL isUserPressedEnter; // a flage  to check whether the user enter a pressed equal or not.
@property (nonatomic,retain) NSString *previousOperation; // a temp to store the previous entered operation


@end

@implementation ViewController

@synthesize cLogic;
@synthesize isUserEnteredDecimalPoint;
@synthesize isUserPressedOperartion;
@synthesize isUserPressedOperand;
@synthesize isUserPressedEnter;
@synthesize previousOperation;



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    cLogic=[[CalculatorLogic alloc]init];
    isUserEnteredDecimalPoint=NO;
    isUserPressedOperartion=NO;
    isUserPressedOperand=NO;
    isUserPressedEnter=NO;
    previousOperation=[[NSString alloc]init];
    
    cLogic.runningResult=0.0;
    cLogic.waitingOperand=0.0;
    cLogic.waitingOperation=@"";
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)operandISPressed:(UIButton *)sender
{
    if(![self.screenLabel.text isEqualToString:@""] && isUserPressedEnter==YES &&isUserPressedOperartion==NO)
    {
        [self clear:sender];
    }
    
    
    if(isUserPressedOperartion==YES && isUserPressedOperand==NO)
    {
        self.screenLabel.text=@"0";
        
    }
    
    
    NSString *temp=[NSString stringWithString:[self.screenLabel.text stringByAppendingString:sender.currentTitle]];
    
    char lastChar = [temp characterAtIndex:[temp length] - 1];
    char firstChar =[temp characterAtIndex:1];
    
    if ((firstChar =='.' && isUserEnteredDecimalPoint==NO)) // if the user entered the deciemal point first ex. 0.01
    {
        self.screenLabel.text=[self.screenLabel.text stringByAppendingString:sender.currentTitle];
        isUserEnteredDecimalPoint=YES;;
    }
    
    else // The decimal point wasn't the first entered
    {
        if(lastChar == '.' && isUserEnteredDecimalPoint==NO) // 
            {
                self.screenLabel.text=[self.screenLabel.text stringByAppendingString:sender.currentTitle];
                isUserEnteredDecimalPoint=YES;
            }
        else
        {
            if (![sender.currentTitle isEqualToString:@"."])
            {
                self.screenLabel.text=[self.screenLabel.text stringByAppendingString:sender.currentTitle];
            }
        }

        if(firstChar != '.')
        {
            if ([self.screenLabel.text hasPrefix:@"0"] && [self.screenLabel.text length] >= 1)
            {
                self.screenLabel.text = [self.screenLabel.text substringFromIndex:1];
            }
        }
        else
        {
            if ([self.screenLabel.text hasPrefix:@"0"] && [self.screenLabel.text length] >= 1)
            {
                self.screenLabel.text = [self.screenLabel.text substringFromIndex:0];
                
            }
        }
    }
    
    
    isUserPressedOperand=YES;
    
    cLogic.waitingOperand=[self.screenLabel.text doubleValue];
}



- (IBAction)binaryOperaton:(UIButton *)sender
{
    if(isUserPressedEnter==NO || ![previousOperation isEqualToString:cLogic.waitingOperation])
    {
    previousOperation=[NSString stringWithString:cLogic.waitingOperation];
    }
    
    
    isUserPressedOperartion=YES;
    isUserPressedOperand=NO;
    isUserEnteredDecimalPoint=NO;
    
    cLogic.waitingOperation = sender.currentTitle;
    
    if (cLogic.runningResult==0) // in case if the user enterd operand then press equal 
    {
        cLogic.runningResult=cLogic.waitingOperand;
    }
    
    else
    {
        if(isUserPressedEnter ==NO && [previousOperation isEqualToString:cLogic.waitingOperation])
        {
            [cLogic Calculate];
            self.screenLabel.text=[NSString stringWithFormat:@"%.2f",cLogic.runningResult];
            
        }
        else
        {            
            if (isUserPressedEnter==NO || (isUserPressedEnter==YES && [previousOperation isEqualToString:cLogic.waitingOperation]))
            {
                cLogic.waitingOperation = previousOperation;

                [cLogic Calculate];
                cLogic.waitingOperation = sender.currentTitle;

                self.screenLabel.text=[NSString stringWithFormat:@"%.2f",cLogic.runningResult];
                
            }
        }
    }
    
}

- (IBAction)clear:(UIButton *)sender {
    
    //clear all the vars
    self.screenLabel.text=@"0";
    isUserEnteredDecimalPoint=NO;
    isUserPressedOperartion=NO;
    isUserPressedOperand=NO;
    isUserPressedEnter=NO;
    self.cLogic.runningResult=0.0;
    self.cLogic.waitingOperand=0.0;
    self.cLogic.waitingOperation=@"";
    previousOperation=@"";
    
    
    
}
- (IBAction)Equal:(UIButton *)sender
{

    if (cLogic.runningResult==0)
    {
        cLogic.runningResult=cLogic.waitingOperand;
    }
    else
    {
        [cLogic Calculate];
    }
    
    cLogic.waitingOperand=0.0;
    
    isUserPressedEnter=YES;
    isUserPressedOperartion=NO;
    self.screenLabel.text=[NSString stringWithFormat:@"%.2f",cLogic.runningResult];
    
}

- (IBAction)squareRoot:(UIButton *)sender {
    
    if (cLogic.runningResult==0)
    {
        cLogic.runningResult=cLogic.waitingOperand;
    }

    
    cLogic.waitingOperation=@"sqr";
    
    [cLogic Calculate];
    
    self.screenLabel.text=[NSString stringWithFormat:@"%.2f",cLogic.runningResult];
    
}

- (IBAction)signChange:(UIButton *)sender {
    
    if (cLogic.runningResult==0)
    {
        cLogic.runningResult= cLogic.waitingOperand;
    }

    cLogic.waitingOperation=@"±";
    
    [cLogic Calculate];
    
    self.screenLabel.text=[NSString stringWithFormat:@"%.2f",cLogic.runningResult];
    
    
}

@end
