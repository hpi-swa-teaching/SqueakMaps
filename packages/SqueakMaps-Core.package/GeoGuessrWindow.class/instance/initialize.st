initialization
initialize

	super initialize.
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