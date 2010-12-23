//
//  Bookstore.h
//  MyBookstore
//
//  Created by Matthew Robinson on 12/22/10.
//  Copyright 2010 SirAnax. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Book.h"

@interface Bookstore : NSObject {
	NSMutableDictionary* myBookstore;
	NSString* bookEntries;
	
}

@property (retain) NSDictionary* myBookstore;

- (id)init;
- (void)printInventory;
- (BOOL)addBook:(Book *)newBook;
- (BOOL)removeBookWithTitle:(NSString *)whichTitle;
- (void)dealloc;
- (void)countEntries;

@end
