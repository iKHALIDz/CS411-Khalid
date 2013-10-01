//
//  ViewController2.h
//  Test App
//
//  Created by KHALID ALAHMARI on 9/29/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "photo.h"


@interface ViewController2 : UIViewController


@property (nonatomic,strong) photo * currentPhoto;

@property (weak, nonatomic) IBOutlet UIImageView *currentImage;


@end
