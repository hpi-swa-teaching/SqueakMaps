initialization
initialize

	super initialize.
	leaderboard := Leaderboard current.
	self
		applyUserInterfaceTheme;
		setLabel: 'GeoGuessr' asString;
		initializeMorphsAndButtons;
		focusCampus;
		initializeGuessing;
		initializeGame;
		initializeFrames;
		initializeWindow;
		refreshForState;
		openInWorld