//
//  ViewController.h
//  Discount Calculator
//
//  Created by KHALID ALAHMARI on 10/3/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GraphViewController.h"
#import "Profile.h"
#import "BarChart.h"

@interface ViewController : UIViewController <UITextFieldDelegate>


@property (weak, nonatomic) IBOutlet UITextField *PriceTextField;
@property (weak, nonatomic) IBOutlet UITextField *DollarsOffTextField;
@property (weak, nonatomic) IBOutlet UITextField *DiscountTextField;
@property (weak, nonatomic) IBOutlet UITextField *AdditionlDiscTextField;

@property (weak, nonatomic) IBOutlet UITextField *TaxTextField;
@property (weak, nonatomic) IBOutlet UILabel *OriginalPriceLabel;

@property (weak, nonatomic) IBOutlet UILabel *DiscountPriceLabel;

- (IBAction)DiscountCalculate:(UIButton *)sender;


@end
