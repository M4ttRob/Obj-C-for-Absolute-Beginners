#import <Foundation/Foundation.h>
#import "RadioStation.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
	NSMutableDictionary* stations = [[NSMutableDictionary alloc] init];
	RadioStation* newStation1;
	RadioStation* newStation2;
	RadioStation* newStation3;
	
	newStation1 = [[RadioStation alloc]
				   initWithName:@"Star 94 FM" atFrequency:94.1 radioBand:@"FM"];
	newStation2 = [[RadioStation alloc]
				   initWithName:@"Kissin' 92.5" atFrequency:92.5 radioBand:@"FM"];
	newStation3 = [[RadioStation alloc]
				   initWithName:@"Country 1610.0" atFrequency:2000 radioBand:@"AM"];
	
	[newStation1 checkFrequencyToBand];
	[newStation2 checkFrequencyToBand];
	[newStation3 checkFrequencyToBand];
	
	[stations setObject:newStation1 forKey:@"WSTR1"];	
	[stations setObject:newStation2 forKey:@"WSTR2"];
	[stations setObject:newStation3 forKey:@"WSTR3"];
	
	[newStation1 release];
	[newStation2 release];
	[newStation3 release];
	
	NSLog(@"%@", [stations objectForKey:@"WSTR1"]);
	NSLog(@"%@", [stations objectForKey:@"WSTR2"]);
	NSLog(@"%@", [stations objectForKey:@"WSTR3"]);
	
	[stations release];
    [pool drain];
    return 0;
}
