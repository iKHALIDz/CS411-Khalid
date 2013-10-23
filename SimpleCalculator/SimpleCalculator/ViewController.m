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
@property (assign) BOOL isUserEnteredDecimalPoint; // an indicator to check if the user enter a decimal point, the purpose of this flage is to handel the cases when the user enter the decimal point at the beginning of the number or in the middel
@property (assign) BOOL isUserPressedOperartion;
@property (assign) BOOL isUserPressedOperand;
@property (assign) BOOL isUserPressedEnter;
@property (nonatomic,retain) NSString *previousOperation;


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
	// Do any additional setup after loading the view, typically from a nib.
    
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
    
    if(isUserPressedOperartion==YES && isUserPressedOperand==NO)
    {
        self.screenLabel.text=@"0";
        
    }
    
    NSString *temp=[NSString stringWithString:[self.screenLabel.text stringByAppendingString:sender.currentTitle]];
    char lastChar = [temp characterAtIndex:[temp length] - 1];
    char firstChar =[temp characterAtIndex:1];
    
    if ((firstChar =='.' && isUserEnteredDecimalPoint==NO))
    {
        self.screenLabel.text=[self.screenLabel.text stringByAppendingString:sender.currentTitle];
        isUserEnteredDecimalPoint=YES;;
    }
    
    else
    {
        if(lastChar == '.' && isUserEnteredDecimalPoint==NO)
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
    
    if (cLogic.runningResult==0)
    {
        cLogic.runningResult=cLogic.waitingOperand;
    }
    
    else
    {
        if(isUserPressedEnter ==NO && [previousOperation isEqualToString:cLogic.waitingOperation])
        {
        [cLogic CalculateWithOperandA:cLogic.runningResult ANDOperandB:cLogic.waitingOperand UsingOperation:cLogic.waitingOperation];
            
        self.screenLabel.text=[NSString stringWithFormat:@"%.2f",cLogic.runningResult];

            
        }
        else
        {            
            if (isUserPressedEnter==NO || (isUserPressedEnter==YES && [previousOperation isEqualToString:cLogic.waitingOperation]))
            {
                [cLogic CalculateWithOperandA:cLogic.runningResult ANDOperandB:cLogic.waitingOperand UsingOperation:previousOperation];
                
                self.screenLabel.text=[NSString stringWithFormat:@"%.2f",cLogic.runningResult];
                
            }
        
        }
    }
    
}

- (IBAction)clear:(UIButton *)sender {
    
    self.screenLabel.text=@"0";
    isUserEnteredDecimalPoint=NO;
    isUserPressedOperartion=NO;
    isUserPressedOperand=NO;
    isUserPressedEnter=NO;
    self.cLogic.runningResult=0.0;
    self.cLogic.waitingOperand=0.0;
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
        [cLogic CalculateWithOperandA:cLogic.runningResult ANDOperandB:cLogic.waitingOperand UsingOperation:cLogic.waitingOperation];
    }

    isUserPressedEnter=YES;
    self.screenLabel.text=[NSString stringWithFormat:@"%.2f",cLogic.runningResult];
}

- (IBAction)squareRoot:(UIButton *)sender {
    
    if (cLogic.runningResult==0)
    {
        cLogic.runningResult=cLogic.waitingOperand;
    }

    double squareRootResult=sqrt(cLogic.runningResult);
    self.screenLabel.text=[NSString stringWithFormat:@"%.2f",squareRootResult];
    cLogic.runningResult=squareRootResult;
    
}


- (IBAction)signChange:(UIButton *)sender {
    
    if (cLogic.runningResult==0)
    {
        cLogic.runningResult= cLogic.waitingOperand;
    }
    
    double sign= -1 * cLogic.runningResult;
    
    self.screenLabel.text=[NSString stringWithFormat:@"%.2f",sign];
    
    cLogic.runningResult=sign;
    
}

@end
