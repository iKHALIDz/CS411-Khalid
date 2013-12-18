//
//  Vector.h
//  Three Dimensional Vector
//
//  Created by KHALID ALAHMARI on 10/12/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vector : NSObject <NSCopying>

{
    
    NSNumber* _xComponent;
    NSNumber* _yComponent;
    NSNumber* _zComponent;
}

@property (nonatomic,retain) NSNumber* xComponent;
@property (nonatomic,retain) NSNumber* yComponent;
@property (nonatomic,retain) NSNumber* zComponent;


-(id) initWithxComponent: (NSNumber*) xComponent andYComponent: (NSNumber*) yComponent andzComponent:(NSNumber*) zComponent;

//Getters
-(NSNumber *) xComponent;
-(NSNumber *) yComponent;
-(NSNumber *) zComponent;

//Setters

-(void) setXComponent:(NSNumber *)axComponent;
-(void) setYComponent:(NSNumber *)ayComponent;
-(void) setZComponent:(NSNumber *)azComponent;


-(NSString*) description;



-(Vector*) Addtion: (Vector*) vectorB;
-(Vector*) Subtract: (Vector*) vectorB;
-(Vector*) DotMultipcation: (Vector*) vectorB;

@end
