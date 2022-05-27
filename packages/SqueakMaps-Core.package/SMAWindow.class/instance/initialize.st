initialization
initialize

	super initialize.
	self
		applyUserInterfaceTheme;
		setLabel: 'SqueakMaps' asString;
		tiledMapMorph: SMATiledMapMorph new;
		buildSidebar;
		initializeButtonRow;
		initializeWindow