searching
testLocationSearchingGesundbrunnen

	| placeName placeLatLong |
	
	placeName := 'Gesundbrunnen'.
	placeLatLong := (13.384846@52.5509201).
	self squeakMapsWindow searchInput: placeName.
	self squeakMapsWindow searchLocation.	
	self assert: self squeakMapsWindow tiledMapMorph center equals: (SMAMapTileLoader latLongToWorldPos: placeLatLong)