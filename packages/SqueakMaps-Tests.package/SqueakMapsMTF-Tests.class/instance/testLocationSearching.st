as yet unclassified
testLocationSearching
	
	self subject searchBar contents: 'Gesundbrunnen'.
	searchButton click.
	self assert: self subject tiledMapMorph center equals: (MapTileLoader latLongToWorldPos: (13.384846@52.5509201)).