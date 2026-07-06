updating
showPlaying

	self startButton visible: false.
	self quitButton visible: false.
	self backButton visible: true.
	self window currentGuess isPresent
		ifTrue: [
			self einloggenButton
				label: 'Log in guess' font: self window geoGuessrButtonFont;
				visible: true]
		ifFalse: [self einloggenButton visible: false]
