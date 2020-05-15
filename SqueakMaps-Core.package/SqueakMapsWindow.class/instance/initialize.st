as yet unclassified
initialize
	super initialize.
	self setLabel: 'SqueakMaps' asString.
	self tiledMapMorph: TiledMapMorph new.
	self searchBarMorph: (TextMorph new contents:  'search').
	self searchBarMorph contents: 'hi' asString.
	self searchButton: (SimpleButtonMorph new color: Color gray; label: 'go!').
	self initializeWindow.
	self openInWorld