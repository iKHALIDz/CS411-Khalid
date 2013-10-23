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

-(void)CalculateWithOperandA:(float)OPA ANDOperandB:(float)OPB UsingOperation:(NSString *)opt
{

    if([opt isEqualToString:@"+"])
    {
       self.runningResult=OPA+OPB;
    }
    else if ([opt isEqualToString:@"-"])
    {
        self.runningResult=OPA-OPB;
    }
    else if ([opt isEqualToString:@"X"])
    {
        self.runningResult=OPA*OPB;
    }
    
    else if ([opt isEqualToString:@"÷"])
    {
        self.runningResult=OPA/OPB;
    }
    
}


@end