//
//  BookstoreAppDelegate.h
//  Bookstore
//
//  Created by Matthew Robinson on 12/21/10.
//  Copyright 2010 MST. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BookstoreAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
