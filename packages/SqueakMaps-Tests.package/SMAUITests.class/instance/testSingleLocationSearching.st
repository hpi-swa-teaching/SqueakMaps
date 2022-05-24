as yet unclassified
testSingleLocationSearching

	| latlongGesundbrunnen pinsGesundbrunnen |
	
	latlongGesundbrunnen := 13.384846@52.5509201.
	
	self searchBar setText: 'Gesundbrunnen'.
	self secondSearchBar setText: ''.
	self searchButton click.
	
	pinsGesundbrunnen :=  self tiledMap pins select: [:pin | pin latLong = latlongGesundbrunnen].
	self assert: pinsGesundbrunnen notEmpty.
	self assert: (SMAMapTileLoader latLongToWorldPos: latlongGesundbrunnen) equals: self tiledMap center