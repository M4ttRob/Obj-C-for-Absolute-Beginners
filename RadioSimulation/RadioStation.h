//
//  RadioStation.h
//  RadioSimulation
//
//  Created by Matthew Robinson on 12/22/10.
//  Copyright 2010 SirAnax. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface RadioStation : NSObject 
{
	NSString* name;
	double frequency;
	NSString* band;
}

+ (double)minAMFrequency;
+ (double)maxAMFrequency;
+ (double)minFMFrequency;
+ (double)maxFMFrequency;

- (id)initWithName:(NSString*)name
	   atFrequency:(double)freq
		 radioBand:(NSString*)band;
- (NSString *)name;
- (void)setName:(NSString*)newName;
- (double)frequncy;
- (void)setFrequency:(double)newFrequency;
- (NSString *)band;
- (void)checkFrequencyToBand;

@end
