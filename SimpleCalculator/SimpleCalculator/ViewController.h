//
//  ViewController.h
//  SimpleCalculator
//
//  Created by KHALID ALAHMARI on 10/21/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorLogic.h"

@interface ViewController : UIViewController


- (IBAction)operandISPressed:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UILabel *screenLabel;

- (IBAction)binaryOperaton:(UIButton *)sender;

- (IBAction)clear:(UIButton *)sender;


- (IBAction)Equal:(UIButton *)sender;

- (IBAction)squareRoot:(UIButton *)sender;

- (IBAction)signChange:(UIButton *)sender;

@end


