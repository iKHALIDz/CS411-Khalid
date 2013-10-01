//
//  ViewController.m
//  Test App
//
//  Created by KHALID ALAHMARI on 9/29/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


@synthesize myPhoto;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    myPhoto=[[photo alloc]init];
    myPhoto.Name = @"Eagel";
    myPhoto.Filename=@"03369_baldeagle_640x960.jpg";
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"Veiw1ToVeiw2"])
    {
        ViewController2 *vc = [segue destinationViewController];
        
        [vc setCurrentPhoto:myPhoto];
    }
}

@end

