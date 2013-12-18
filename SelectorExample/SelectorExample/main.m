//
//  main.m
//  SelectorExample
//
//  Created by KHALID ALAHMARI on 10/13/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //array of  variety of diff. objects
        NSArray *array=[NSArray arrayWithObjects:
                        [NSString stringWithFormat:@"Khalid"],
                        [NSNumber numberWithDouble:4.4],
                        [NSString stringWithFormat:@"Abdullah"]
                        ,nil];
        
        SEL birthday=@selector(doubleValue);
        SEL description=@selector(description);
        
        
        for(id obj in array)
        {
            if ([obj respondsToSelector:birthday])
            {
                [obj performSelector:birthday];
                
                if (obj respondsToSelector:description)
                {
                ////
                }
                
                else
                {
                    NSLog(@"The current object can't respond to birthday object and isn't a descendant of NSObject %@",obj);
                }
            }
            else
            {
                NSLog(@"The current object can't respond to birthday object and isn't a descendant of NSObject %@",obj);
            }
        }
        
    return 0;
    }
}