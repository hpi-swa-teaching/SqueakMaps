initialization
initializeWindow

	"The home screen has no top control bar, so the background image fills the whole window."
	self addMorph: self pictureMorph fullFrame: (LayoutFrame new
		leftFraction: 0 offset: 0;
		rightFraction: 1 offset: 0;
		topFraction: 0 offset: 0;
		bottomFraction: 1 offset: 0).
	self
		addMorph: self singleplayerButton frame: (0.345 @ 0.72 extent: 0.15 @ 0.1);
		addMorph: self multiplayerButton frame: (0.505 @ 0.72 extent: 0.15 @ 0.1);
		addMorph: self leaderboardButton frame: (0.345 @ 0.83 extent: 0.31 @ 0.1);
		addMorph: self homeQuitButton frame: (0.03 @ 0.85 extent: 0.13 @ 0.1)
