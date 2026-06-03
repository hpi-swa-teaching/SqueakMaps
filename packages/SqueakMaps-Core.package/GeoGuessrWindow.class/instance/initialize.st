initialization
initialize

	super initialize.
	self
		applyUserInterfaceTheme;
		setLabel: 'GeoGuessr' asString;
		tiledMapMorph: SMATiledMapMorph new;
		timerMorph: TimerMorph new;
		buildStartButton;
		focusCampus;
		initializeWindow;
		openInWorld