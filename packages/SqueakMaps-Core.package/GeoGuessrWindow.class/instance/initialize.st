initialization
initialize

	super initialize.
	self
		applyUserInterfaceTheme;
		setLabel: 'GeoGuessr' asString;
		initializeMorphsAndButtons;
		focusCampus;
		initializeFrames;
		initializeGuessing;
		initializeWindow;
		openInWorld