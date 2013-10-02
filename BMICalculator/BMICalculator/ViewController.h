//
//  ViewController.h
//  BMICalculator
//
//  Created by KHALID ALAHMARI on 10/1/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *currentImage;

- (IBAction)GoButtonPressed:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UILabel *BMILabel;

@property (weak, nonatomic) IBOutlet UITextField *WeightTextField;

@property (weak, nonatomic) IBOutlet UITextField *HightTextField;

@property (weak, nonatomic) IBOutlet UISwitch *SwitchToUSWeightAndMeasures;

- (IBAction)SwitchToUSWeightAndMeasuresAction:(UISwitch *)sender;

@property (weak, nonatomic) IBOutlet UILabel *HightLabel;

@property (weak, nonatomic) IBOutlet UILabel *WeightLabel;

@property (weak, nonatomic) IBOutlet UILabel *CategoryLabel;

@end

