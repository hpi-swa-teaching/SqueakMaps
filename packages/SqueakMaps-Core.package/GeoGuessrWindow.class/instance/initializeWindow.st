initialization
initializeWindow

	self addMorph: self pictureMorph fullFrame: largeFrame.
	self
		addMorph: self singleplayerButton frame: (0.345 @ 0.67 extent: 0.15 @ 0.1);
		addMorph: self multiplayerButton frame: (0.505 @ 0.67 extent: 0.15 @ 0.1);
		addMorph: self leaderboardButton frame: (0.345 @ 0.78 extent: 0.31 @ 0.1)
