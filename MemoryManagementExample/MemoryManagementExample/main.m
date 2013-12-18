//
//  main.m
//  MemoryManagementExample
//
//  Created by KHALID ALAHMARI on 10/10/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
        
        Person *person1=[[Person alloc]initWithName:@"Khalid" AndZipCode:@98233];
        
        NSLog(@"%@",person1);
        
        NSLog(@"%lu",(unsigned long)[person1 retainCount]);
        
        Person *person2;
        person2=[person1 retain];
        
        NSLog(@"%@",person2);
        
       
        
        Person *person3= [person1 copy];
        
        
        
         NSLog(@"%lu",(unsigned long)[person2 retainCount]);
         NSLog(@"%lu",(unsigned long)[person3 retainCount]);
                

        
        NSString *str1=[[NSString alloc]initWithFormat:@"STR"];
        
        NSString *str2=[str1 copy];
        NSString *str3=[str2 retain];
        
        NSLog(@"%lu str1",(unsigned long)[str1 retainCount]);
        NSLog(@"%lu str2",(unsigned long)[str2 retainCount]);
        NSLog(@"%lu str3",(unsigned long)[str3 retainCount]);
        
        
        [person2 release];
        
        [person3 release];
         [str2 release];
        [str1 release];
        [str3 release];
        
        
        if ([person1 is:[NSObject class]])
        {
            NSLog(@"YES");
        }
        else
        {
            
            NSLog(@"NO");
        }
        
        
    }
    return 0;
}
