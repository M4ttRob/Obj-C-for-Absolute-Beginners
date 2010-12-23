#import <Foundation/Foundation.h>
#import "HelloWorld.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
	
	HelloWorld* MyObject = [[HelloWorld alloc] init];
	//[MyObject printGreeting];
	//[MyObject printMeaningOfLife];
	[MyObject printBoth];
	[MyObject release];
	
    [pool drain];
    return 0;
}
