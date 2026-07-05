building
buildQuitButton

	self quitButton: (PluggableButtonMorph new
		label: 'Quit game' font: self geoGuessrButtonFont;
		target: [self handleQuitButton];
		actionSelector: #value;
		yourself)
