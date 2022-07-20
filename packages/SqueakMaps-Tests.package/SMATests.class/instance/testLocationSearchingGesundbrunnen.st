searching
testLocationSearchingGesundbrunnen

	| placeName coordinates |
	
	placeName := 'Gesundbrunnen'.
	coordinates := SMAGeoCoordinate newFrom: 13.384846@52.5509201.
	self squeakMapsWindow searchInput: placeName.
	self squeakMapsWindow searchLocation.	
	
	self assert: self squeakMapsWindow tiledMapMorph center equals: (SMAMapConfigurator geoCoordinatesToWorldPos: coordinates)