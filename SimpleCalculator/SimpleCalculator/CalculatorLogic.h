//
//  CalculatorLogic.h
//  SimpleCalculator
//
//  Created by KHALID ALAHMARI on 10/21/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorLogic : NSObject

@property (assign) double waitingOperand;
@property (nonatomic,retain) NSString * waitingOperation;
@property (assign) double runningResult;

-(void) CalculateWithOperandA:(float)OPA ANDOperandB:(float)OPB UsingOperation:(NSString*)opt;


@end
