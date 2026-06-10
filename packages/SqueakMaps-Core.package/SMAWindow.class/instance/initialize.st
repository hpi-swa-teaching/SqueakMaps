initialization
initialize

	super initialize.
	self
		applyUserInterfaceTheme;
		setLabel: 'SqueakMaps' asString;
		tiledMapMorph: SMATiledMapMorph new;
		initializeButtonRow;
		initializeWindow