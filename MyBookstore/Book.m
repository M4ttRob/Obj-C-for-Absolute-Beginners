//
//  Book.m
//  MyBookstore
//
//  Created by Matthew Robinson on 12/22/10.
//  Copyright 2010 SirAnax. All rights reserved.
//

#import "Book.h"


@implementation Book
@synthesize title, author, description, isbn;

- (id)initWithTitle:(NSString *)newTitle
			 author:(NSString *)newAuthor
		description:(NSString *)newDescription
			   isbn:(NSString *)newISBN;
{
	[super init];
	
	title = newTitle;
	author = newAuthor;
	description = newDescription;
	isbn = newISBN;
	
	return self;
}

@end
