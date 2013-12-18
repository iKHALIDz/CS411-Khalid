//
//  main.m
//  FinalReviewQ7
//
//  Created by KHALID ALAHMARI on 12/14/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "Student.h"
#import <sqlite3.h>

NSArray* evenBetter()
{
    //1.const char includung query //
    
    NSMutableArray *arrayList=[[NSMutableArray alloc]init];
    NSString* query = @"SELECT * FROM students;";
    sqlite3_stmt *statement;
    
    NSString* FN;
    NSString* LS;
    NSString* CWID;
    
    sqlite3 *db;
    const unsigned char* text;

    
    sqlite3_open("/Users/KHALID/xCodeFiles/CS411-Khalid/FinalReviewQ7/Stud.sl3", &db);
    

     if (sqlite3_prepare_v2(db, [query UTF8String],(int)[query length], &statement, nil) == SQLITE_OK)
     {
     
     while (sqlite3_step(statement) == SQLITE_ROW)
     {
     text = sqlite3_column_text(statement, 0);
     if (text)
     {
     FN=[NSString stringWithCString:
     (const char*)text encoding:NSUTF8StringEncoding];
     }
     else
     {
     FN = nil;
     }
     
     text = sqlite3_column_text(statement, 1);
     
     if (text)
     {
     LS=[NSString stringWithCString:
     (const char*)text encoding:NSUTF8StringEncoding];
     }
     else
     {
     LS = nil;
     }
     
     text = sqlite3_column_text(statement, 2);
     
     if (text)
     {
     CWID=[NSString stringWithCString:
     (const char*)text encoding:NSUTF8StringEncoding];
     }
     else
     {
     CWID = nil;
     }
     
     
     Student *S=[[Student alloc]initwithFirstName:FN AndLastName:LS AndCWID:CWID];
     
     [arrayList addObject:S];
     }
         
     }
     
     sqlite3_finalize(statement);

    return arrayList;
}

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        evenBetter();
        
        /*
        Student *s1=[[Student alloc]initwithFirstName:@"Khalid" AndLastName:@"Alahmari" AndCWID:@"755-333-5678"];
        
        Student *s2=[[Student alloc]initwithFirstName:@"Omar" AndLastName:@"Alruhaily" AndCWID:@"126-563-7773"];
        
        Student *s3=[[Student alloc]initwithFirstName:@"Rakan" AndLastName:@"Alajlan" AndCWID:@"655-333-4678"];
        
        NSArray *array=[[NSArray alloc]initWithObjects:s1,s2,s3,nil];
         
        SEL sel=@selector(compare:);
        
        NSArray * sortedArray= [[NSArray alloc]initWithArray:[array sortedArrayUsingSelector:sel]];
       */
        
       // SEL sel=@selector(compare:);
        
        NSArray * array=evenBetter();
        
        NSArray * sortedArray= [[NSArray alloc]initWithArray:[array sortedArrayUsingSelector:@selector(compare:)]];
        
        for(id obj in sortedArray)
        {
            NSLog(@"%@ %@ %@",[obj firstName],[obj lastName],[obj CWID]);
        }
        
        
    }
    return 0;
}