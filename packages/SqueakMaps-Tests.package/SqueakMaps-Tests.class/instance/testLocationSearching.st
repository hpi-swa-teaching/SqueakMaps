testing
testLocationSearching
"open street maps"
	self squeakMapsWindow searchBar contents: 'Gesundbrunnen'.
	self squeakMapsWindow searchButton doButtonAction.
	self assert: self squeakMapsWindow tiledMapMorph center equals: (MapTileLoader latLongToWorldPos: (13.384846@52.5509201)).
	
	self squeakMapsWindow searchBar contents: 'berghain'.
	self squeakMapsWindow searchButton doButtonAction.
	self assert: self squeakMapsWindow tiledMapMorph center equals: (MapTileLoader latLongToWorldPos: (13.4430356@52.5111669))