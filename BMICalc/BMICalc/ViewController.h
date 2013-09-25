//
//  ViewController.h
//  BMICalc
//
//  Created by KHALID ALAHMARI on 9/18/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <UIKit/UIKit.h> 

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak,  nonatomic) IBOutlet UITextField *WeightTextField;
@property (weak, nonatomic) IBOutlet UITextField *HightTextField;
 
- (IBAction)GoButtonPressed:(UIButton *)sender;
 
@property (weak, nonatomic) IBOutlet UILabel *BMILabel;
@property (weak, nonatomic) IBOutlet UITextField *NameTextField;

@end
//