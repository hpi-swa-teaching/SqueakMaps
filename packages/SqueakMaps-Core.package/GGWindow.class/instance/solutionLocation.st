guessing
solutionLocation

	^ SMALocation new
		coordinates: gameOrchestrator currentLevel coordinates;
		label: 'Lösung';
		yourself
