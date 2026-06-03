guessing
guessLocation

	^ SMALocation new
		coordinates: self currentGuess;
		label: 'Guess';
		yourself
