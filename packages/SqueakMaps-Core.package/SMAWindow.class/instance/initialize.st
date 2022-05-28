initialization
initialize

	super initialize.
	self tiledMapMorph: SMATiledMapMorph new.
	"self tiledMapMorph frame: (0.3@0.0 extent: 0.7@1.0)"
	"
	self
		applyUserInterfaceTheme;
		setLabel: 'SqueakMaps' asString;
		tiledMapMorph: SMATiledMapMorph new;
		buildSidebar;
		initializeWindow
	"