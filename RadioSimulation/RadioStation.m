//
//  RadioStation.m
//  RadioSimulation
//
//  Created by Matthew Robinson on 12/22/10.
//  Copyright 2010 SirAnax. All rights reserved.
//

#import "RadioStation.h"


@implementation RadioStation

+ (double)minAMFrequency {
	return 520.0;
}

+ (double)maxAMFrequency {
	return 1610.0;
}

+ (double)minFMFrequency {
	return 88.3;
}

+ (double)maxFMFrequency {
	return 107.9;
}

- (id)initWithName:(NSString *)newName atFrequency:(double)newFreq radioBand:(NSString *)newBand{
	self=[super init];
	if (self != nil) {
		name = [newName retain];
		frequency = newFreq;
		band = [newBand retain];
	}
	return self;
}

- (void)checkFrequencyToBand {
	if (band == @"FM" && frequency > 107.9) {
		frequency = 107.9;
	}
	else if (band == @"FM" && frequency < 88.9) {
		frequency = 88.9;
	}
	else if (band == @"AM" && frequency > 1610.0) {
		frequency = 1610.0;
	}
	else if (band == @"AM" && frequency < 520.0) {
		frequency = 520.0;
	}
	
}

- (NSString *)description {
	return [NSString stringWithFormat:@"Name: %@, Frequency: %.1f, Band: %@", name, frequency, band];
}

- (void)dealloc {
	[name release];
	[super dealloc];
}
	
@end
