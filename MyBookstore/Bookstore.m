//
//  Bookstore.m
//  MyBookstore
//
//  Created by Matthew Robinson on 12/22/10.
//  Copyright 2010 SirAnax. All rights reserved.
//

#import "Bookstore.h"

@implementation Bookstore
@synthesize myBookstore;

- (id)init {
	self = [super init];
	if (self != nil) {
		self.myBookstore = [[NSMutableDictionary alloc] init];
	}
	return self;
}

- (BOOL)addBook:(Book *)newBook {
	if ([myBookstore objectForKey:newBook.title] != nil) {
		NSLog(@"That book is already in the bookstore.");
		return NO;
	}
	else {
		[myBookstore setObject:newBook forKey:newBook.title];
		return YES;
	}

	
}

- (BOOL)removeBookWithTitle:(NSString *)whichTitle {
	if ([myBookstore objectForKey:whichTitle] != nil) {
		[myBookstore removeObjectForKey:whichTitle];
	return YES;
	}
	return NO;
}

- (void)countEntries {
}

- (void)printInventory {
	
	//bookEntries = [self count];
	if ([myBookstore count] == 0) {
		NSLog(@"No books in bookstore.");
	}
		Book *book;
		for (NSString* key in myBookstore) {
			book = [myBookstore objectForKey:key];
			NSLog(@"	    Title: %@ ", book.title);
			NSLog(@"	   Author: %@ ", book.author);		
			NSLog(@"Description: %@ ", book.description);
			NSLog(@"	       ID: %@ ", book.isbn);}
	}

- (void)dealloc {
	self.myBookstore = nil;
	[super dealloc];
}
	 
@end
