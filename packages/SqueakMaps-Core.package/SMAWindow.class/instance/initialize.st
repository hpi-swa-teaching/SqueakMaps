initialization
initialize
	super initialize.
	self
		applyUserInterfaceTheme;
		setLabel: 'SqueakMaps' asString;
		tiledMapMorph: TiledMapMorph new;
		initializeButtonRow;
		initializeWindow