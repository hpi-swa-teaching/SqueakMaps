building
buildEinloggenButton

	self einloggenButton: (PluggableButtonMorph new
		label: 'Log in guess' font: self geoGuessrButtonFont;
		target: [self handleEinloggenButton];
		actionSelector: #value;
		yourself)
