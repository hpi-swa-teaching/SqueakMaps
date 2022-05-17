as yet unclassified
initialize

	super initialize.
	self setLabel: 'SqueakMaps' asString.
	self tiledMapMorph: SMATiledMapMorph new.
	self initializeWindow.
	self openInWorld