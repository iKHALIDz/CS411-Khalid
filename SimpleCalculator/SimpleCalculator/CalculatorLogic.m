//
//  CalculatorLogic.m
//  SimpleCalculator
//
//  Created by KHALID ALAHMARI on 10/21/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "CalculatorLogic.h"

@implementation CalculatorLogic


@synthesize runningResult,waitingOperand,waitingOperation;

-(void)Calculate
{

    if([self.waitingOperation isEqualToString:@"+"])
    {
       self.runningResult=self.runningResult+self.waitingOperand;
    }
    else if ([self.waitingOperation isEqualToString:@"-"])
    {
        self.runningResult=self.runningResult-self.waitingOperand;
    }
    else if ([self.waitingOperation isEqualToString:@"X"])
    {
        self.runningResult=self.runningResult*self.waitingOperand;
    }
    
    else if ([self.waitingOperation isEqualToString:@"÷"])
    {
        self.runningResult=self.runningResult/self.waitingOperand;
    }
    
    else if ([self.waitingOperation isEqualToString:@"±"])
    {
        if (runningResult !=0)
        {
            self.runningResult= -1 * self.runningResult;
        }
        
    }
    else if ([self.waitingOperation isEqualToString:@"sqr"])
    {
        if (self.runningResult>=0)
        {
            self.runningResult= sqrt(self.runningResult);
        }
    }
}

@end