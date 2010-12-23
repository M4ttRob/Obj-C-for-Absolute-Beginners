#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
	//sample code from website
	
	int randomNumber = 1;
	int userGuess = 1;
	int userNumber = 0; //guesses made
	int userGames = 0;  //games played
	BOOL continueGuessing = TRUE;
	BOOL keepPlaying = TRUE;
	char yesNo = ' ';
	
	while (keepPlaying)
	{
		randomNumber = (rand() % 101);
		
		NSLog(@"The random number to guess is: %d",randomNumber);
		userNumber = 0;
		while (continueGuessing)
		{
			NSLog (@"Pick a number between 0 and 100.  ");
			scanf ("%i", &userGuess);
			if (userGuess == randomNumber) 
			{
				continueGuessing = FALSE;
				NSLog(@"Correct number!");
			}
			//nested if statement
			else if (userGuess > randomNumber)
			{
				//user guessed too high
				NSLog(@"Your guess is too high");
			}
			else 
			{
				// no reason to check if userGuess < randomNumber. It has to be.
				NSLog(@"Your guess is too low");
			}
			//refactored from our Alice app. This way we only have to code once.
			userNumber = userNumber++;
			NSLog(@"You guessed this many times: %d", userNumber);
			NSLog(@"The user guessed %d",userGuess);
		}
		userGames = userGames++;
		NSLog (@"Play Again? Y or N");
		fgetc(stdin);	//remove CR/LF i.e extra character
		yesNo = fgetc(stdin);
	
		if (yesNo == 'N')
		{
			keepPlaying = FALSE;
		}
		continueGuessing = TRUE;
	}
	NSLog(@"You played the game %d times.",userGames);
    [pool drain];
    return 0;
}
