//
//  ViewController.h
//  SimpleDiscountCalculator
//
//  Created by KHALID ALAHMARI on 10/8/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DiscountProfile.h"
#import "GraphViewController.h"


@interface MainViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *PriceTextField;


@property (weak, nonatomic) IBOutlet UITextField *DollarsOffTextField;
@property (weak, nonatomic) IBOutlet UITextField *DiscountTextField;
@property (weak, nonatomic) IBOutlet UITextField *AdditionlDiscTextField;

@property (weak, nonatomic) IBOutlet UITextField *TaxTextField;
@property (weak, nonatomic) IBOutlet UILabel *OriginalPriceLabel;

@property (weak, nonatomic) IBOutlet UILabel *DiscountPriceLabel;

- (IBAction)DiscountCalculate:(UIButton *)sender;


@property (nonatomic,retain) DiscountProfile *discountProfile;


@end
