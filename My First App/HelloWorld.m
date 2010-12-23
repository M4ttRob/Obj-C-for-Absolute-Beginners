//
//  HelloWorld.m
//  My First App
//
//  Created by Matthew Robinson on 12/21/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "HelloWorld.h"


@implementation HelloWorld

-(void)printGreeting {
	NSLog(@"Hello World!");
}

-(void)printMeaningOfLife {
	NSLog(@"No meaning!");
}

-(void)printBoth {
	[self printGreeting];
	[self printMeaningOfLife];
}
@end
