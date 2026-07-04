building
buildStartButton

	self startButton: (PluggableButtonMorph new
		label: 'Start game' font: self geoGuessrButtonFont;
		target: [self handleStartButton];
		actionSelector: #value;
		yourself)
