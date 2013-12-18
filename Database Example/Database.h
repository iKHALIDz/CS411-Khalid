//
//  Database.h
//  Database Example
//
//  Created by KHALID ALAHMARI on 11/5/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>


@interface Database : NSObject
{
    
    sqlite3 *_database;
}

+ (Database*) database;
- (NSArray*) AllRoutes;


@end
