//
//  Book.h
//  MyBookstore
//
//  Created by Matthew Robinson on 12/22/10.
//  Copyright 2010 SirAnax. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Book : NSObject {
	NSString* title;
	NSString* author;
	NSString* description;
	NSString* isbn;
}

- (id)initWithTitle:(NSString *)newTitle
			 author:(NSString *)newAuthor
		description:(NSString *)newDescription
			   isbn:(NSString *)newISBN;

@property (nonatomic,retain) NSString* title;
@property (nonatomic,retain) NSString* author;
@property (nonatomic,retain) NSString* description;
@property (nonatomic,retain) NSString* isbn;


@end
