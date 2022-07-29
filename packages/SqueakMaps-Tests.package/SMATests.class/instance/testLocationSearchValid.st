searching
testLocationSearchValid

	| placeName coordinates |
	
	placeName := 'gesundbrunnen'.
	coordinates := SMAGeoCoordinate newFrom: 13.384846@52.5509201.
	self model searchInput: placeName.
	self model searchLocation.	
	
	self assert: self model tiledMapMorph center equals: (SMAMapConfigurator geoCoordinatesToWorldPos: coordinates)