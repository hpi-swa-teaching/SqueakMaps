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
		openInWorld;
		extent: 2100 @ 1200;
		position: 700 @ 300.