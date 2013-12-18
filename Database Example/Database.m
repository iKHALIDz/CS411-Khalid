//
//  Database.m
//  Database Example
//
//  Created by KHALID ALAHMARI on 11/5/13.
//  Copyright (c) 2013 Khalid. All rights reserved.
//

#import "Database.h"

@implementation Database

static Database *_database;

+ (Database *)database
{
    if (_database == nil) {
        _database = [[Database alloc] init];
    }
    return _database;
}


- (id)init {
    if ((self = [super init]))
    {
        NSString *sqLiteDb = [[NSBundle mainBundle] pathForResource:@"Metrolink"
                                                             ofType:@"sl3"];
        
        if (sqlite3_open([sqLiteDb UTF8String], &_database) != SQLITE_OK)
        {
            NSLog(@"Failed to open database!");
        }
        
    }
    
    return self;
}

- (void)dealloc {
    sqlite3_close(_database);
}


- (NSArray*) AllRoutes
{
    NSArray* routes = [[NSMutableArray alloc] init];
    
    NSString* query = @"SELECT route_id FROM routes;";
    
    sqlite3_stmt *statement;
    const unsigned char* text;
    NSString* route;
    if (sqlite3_prepare_v2(_database, [query UTF8String],
                           [query length], &statement, nil) == SQLITE_OK) {
        NSLog(@"###");
        
        // Save query result into array
        while (sqlite3_step(statement) == SQLITE_ROW) {
            text = sqlite3_column_text(statement, 0);
            if (text)
                route = [NSString stringWithCString:
                         (const char*)text encoding:NSUTF8StringEncoding];
            else
                route = nil;
            // Initialize a new route
            
            [routeList addObject: route];
            
        }
        sqlite3_finalize(statement);
    }
    return routeList;
}




@end
