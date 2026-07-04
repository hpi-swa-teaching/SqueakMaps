guessing
guessLocation

	^ SMALocation new
		coordinates: self currentGuess coordinates;
		label: 'Guess';
		yourself
