as yet unclassified
initialize
	super initialize.
	self setLabel: 'SqueakMaps' asString.
	self tiledMapMorph: TiledMapMorph new.
	self api: BingMapsApi new.
	self initializeButtonRow.
	self initializeWindow.
	self openInWorld