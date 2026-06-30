game flow
returnToStartScreen
	"Abort the running game, tear down the game layout and rebuild the home screen with the mode buttons."

	self timerMorph stop; reset.
	self currentGuess: nil.
	gameOrchestrator reset.
	self backButton visible: false.
	self
		removeMorph: self backButton;
		removeMorph: self startButton;
		removeMorph: self einloggenButton;
		removeMorph: self quitButton;
		removeMorph: self infoMorph;
		removeMorph: self infoMorph2;
		removeMorph: self timerMorph;
		removeMorph: self tiledMapMorph.
	self pictureMorph showImage: '/geoguesser_start_screen.png'.
	self initializeWindow
