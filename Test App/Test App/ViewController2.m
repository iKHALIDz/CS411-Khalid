//
//  ViewController2.m
//  Test App
//
//  Created by KHALID ALAHMARI on 9/29/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()



@end

@implementation ViewController2


@synthesize currentPhoto;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    UIImage *image= [UIImage imageNamed:[currentPhoto Filename]];
    
    [self.currentImage setImage:image];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
