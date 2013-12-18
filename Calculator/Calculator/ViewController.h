//
//  ViewController.h
//  Calculator
//
//  Created by KHALID ALAHMARI on 10/19/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (assign) double currentNumber;
@property (assign) double runningTotal;
@property (nonatomic,retain) NSString* whichMethod;
@property (assign) BOOL isOperand;
@property (assign) BOOL isEqualisPressed;


- (IBAction)operands:(UIButton *)sender;

- (IBAction)binaryOperation:(UIButton *)sender;



@property (weak, nonatomic) IBOutlet UILabel *screenLabel;

- (IBAction)Equal:(UIButton *)sender;

- (IBAction)Clear:(UIButton *)sender;

@end



