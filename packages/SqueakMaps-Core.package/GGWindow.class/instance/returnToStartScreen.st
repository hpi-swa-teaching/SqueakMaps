game flow
returnToStartScreen
	"Abort the running game, tear down the game layout and rebuild the home screen with the mode buttons."

	self timerMorph stop; reset.
	self currentGuess: GGNoGuess new.
	gameOrchestrator reset.

	"Restore the large 'cover' picture view. Otherwise the evaluation phase leaves the picture in
	the shrunken 'contain' mode (mapIsLarge true), so the background keeps wide borders until the
	next swapViews on game start."
	self viewSwapper reset.

	"The end-of-game leaderboard overlay must not linger on the home screen."
	leaderboardView ifNotNil: [leaderboardView close].
	self controlBar tearDown.
	self
		removeMorph: self infoMorph;
		removeMorph: self infoMorph2;
		removeMorph: self timerMorph;
		removeMorph: self tiledMapMorph.
	self pictureMorph showImage: '/geoguesser_start_screen.png'.
	self initializeWindow
