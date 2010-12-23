#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
	//declare and initialize variables
	int firstNumber = 2;
	int secondNumber = 3;
	int totalSum = 0;
	firstNumber = firstNumber + 1;
	secondNumber = secondNumber + 1;
	totalSum=firstNumber+secondNumber;
	NSLog(@"%d",totalSum);
	NSLog(@"The program has terminated successfully.");
    [pool drain];
    return 0;
}
