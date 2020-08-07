as yet unclassified
initialize
	super initialize.
	self setLabel: 'SqueakMaps' asString.
	self tiledMapMorph: TiledMapMorph new.
	self initializeWindow.
	self openInWorld