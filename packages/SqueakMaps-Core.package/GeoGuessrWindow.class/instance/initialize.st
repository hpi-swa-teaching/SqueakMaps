initialization
initialize

	super initialize.
	self
		applyUserInterfaceTheme;
		setLabel: 'GeoGuessr' asString;
		tiledMapMorph: SMATiledMapMorph new;
		initializeWindow;
		openInWorld