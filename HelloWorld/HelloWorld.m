#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
    NSLog(@"The Eagle has landed.");
	NSLog(@"That's one small step for man, one giant leap for mankind");
	NSLog(@"Hello, thanks for viewing my first .app for Mac!");
    [pool drain];
    return 0;
}
