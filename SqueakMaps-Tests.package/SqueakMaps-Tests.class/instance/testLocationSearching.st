testing
testLocationSearching
	self squeakMapsWindow searchBar contents: 'Gesundbrunnen'.
	self squeakMapsWindow searchButton doButtonAction.
	self assert: self squeakMapsWindow tiledMapMorph center equals: (MapTileLoader latLongToWorldPos: (13.384846@52.5509201)).
	
	self squeakMapsWindow searchBar contents: 'berghain'.
	self squeakMapsWindow searchButton doButtonAction.
	self assert: self squeakMapsWindow tiledMapMorph center equals: (MapTileLoader latLongToWorldPos: (13.4432676@52.5113775))