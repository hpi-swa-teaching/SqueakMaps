guessing
solutionLocation

	^ SMALocation new
		coordinates: self gameOrchestrator currentLevel coordinates;
		label: 'Lösung';
		yourself
