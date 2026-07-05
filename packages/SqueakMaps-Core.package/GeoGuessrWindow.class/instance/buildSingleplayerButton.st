building
buildSingleplayerButton

	self singleplayerButton: (PluggableButtonMorph new
		label: 'Singleplayer' font: self geoGuessrButtonFont;
		target: [self initializeWindowOnClick. gameOrchestrator isMultiplayer: false];
		actionSelector: #value;
		yourself).
	
