instance creation
newLevel: aLevel guess: aGuess distance: aDistance score: aScore

	^ self new
		level: aLevel;
		guess: aGuess;
		distanceInMeters: aDistance;
		score: aScore;
		yourself
