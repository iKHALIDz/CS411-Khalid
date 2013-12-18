//
//  main.m
//  DynamicBindingExample
//
//  Created by KHALID ALAHMARI on 10/12/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Clown.h"
#import "Hobo.h"
#import "HoboClown.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        id foo;
        Person *p=[[Person alloc]init];
        Clown *c=[[Clown alloc]init];;
        HoboClown *hc=[[HoboClown alloc]init];
        Hobo *h=[[Hobo alloc]init];
        
        
        [p doSomething];
        p=c;
        [foo clownAround]; // correct but nothing is gonna happen since foo points to nill
        [c doSomething]; // c is able to call doSomething
        
        [foo doSomething];
        
        [h hopATrain];
        
        foo=hc;
        
        if([foo isKindOfClass:[Hobo class]]) // indicates whether foo is an instance of "Hobo" class or an instance of any class that "Hobo" inherits from.
        {NSLog(@"Yes");} else{NSLog(@"NO");}
        
        
        if([foo respondsToSelector:@selector(doSomething)])
        {NSLog(@"Yes");} else{NSLog(@"NO");}
        
        
        if ([foo isMemberOfClass:[Person class]]) //indicates whether the foo is an instance of "Hobo"
        {NSLog(@"Yes");} else{NSLog(@"NO");}
    
    }
    return 0;
}

