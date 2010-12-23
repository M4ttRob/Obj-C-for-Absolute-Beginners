#import <Foundation/Foundation.h>
#import "Bookstore.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	Bookstore* theBookNook = [[Bookstore alloc] init];
	
	NSString *newTitle = @"A Farwell To Arms";
	Book *newBook = [[Book alloc] initWithTitle:newTitle 
										 author:@"Ernest Hemingway"
									description:@"The story of an affiar between an English nurse" 
										   isbn:@"156A23"];
	[theBookNook addBook: newBook];
	[newBook release];
	
	NSString *newTitle2 = @"A Farwell To Arms";
	Book *newBook2 = [[Book alloc] initWithTitle:newTitle2 
										  author:@"David Mitchel"
									 description:@"Johny Boi"
											isbn:@"9864G5"];
	[theBookNook addBook: newBook2];
	[newBook2 release];
	
	
	[theBookNook printInventory];
	
	// Shows just the "title" property in the log for each book, respectively.
	// NSLog(@"%@", newBook.title);
	// NSLog(@"%@", newBook2.title);

	[theBookNook removeBookWithTitle:newTitle];
	[theBookNook removeBookWithTitle:newTitle2];

	[theBookNook printInventory];
	[theBookNook release];
	
    [pool drain];
    return 0;
}
