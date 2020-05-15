initialization
initialize
	super initialize.
	self setLabel: 'SqueakMaps' asString.
	self tiledMapMorph: TiledMapMorph new.
	self api: BingMapsApi new.
	self initializeColors.
	self initializeButtonRow.
	self initializeWindow.
	self openInWorld