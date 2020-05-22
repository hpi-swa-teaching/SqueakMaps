testing
testInvalidLocation
	
	self squeakMapsWindow searchBar contents: 'berghain'.
	self squeakMapsWindow searchButton doButtonAction.
	
	self squeakMapsWindow searchBar contents: 'textMorph'.
	self squeakMapsWindow searchButton doButtonAction.
	
	
	self assert: self squeakMapsWindow tiledMapMorph center equals: (MapTileLoader latLongToWorldPos: (13.4432676@52.5113775))
	