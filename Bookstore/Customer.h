//
//  Customer.h
//  Bookstore
//
//  Created by Matthew Robinson on 12/21/10.
//  Copyright 2010 MST. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Customer : NSObject {
	NSString* firstName;
	NSString* lastName;
	NSString* addressLine1;
	NSString* addressLine2;
	NSString* city;
	NSString* state;
	NSString* zip;
	NSString* phoneNumber;
	NSString* emailAddress;
	NSString* favoriteGenre;
}

-(NSArray *) listPurchaseHistory;

@end
