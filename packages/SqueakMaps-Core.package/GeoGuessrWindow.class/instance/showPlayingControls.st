game flow
showPlayingControls
	"Einloggen is only offered once a marker has been placed."

	self startButton visible: false.
	self quitButton visible: false.
	self backButton visible: true.
	self currentGuess
		ifNil: [self einloggenButton visible: false]
		ifNotNil: [
			self einloggenButton
				label: 'Log in guess' font: self geoGuessrButtonFont;
				visible: true]
