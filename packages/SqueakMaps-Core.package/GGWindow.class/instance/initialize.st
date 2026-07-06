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
		initializeViewSwapper;
		initializeWindow;
		refreshForState;
		openInWorld;
		extent: 2100 @ 1200;
		position: 700 @ 300.