calculation
testCalculateCenterGeoCoordinates

	| location1 location2 location3 mapConfigurator centerCoordinates |
	
	location1 := SMALocation new
		coordinates: (SMAGeoCoordinate newFrom: 10 @ 10);
		yourself.
	location2 := SMALocation new
		coordinates: (SMAGeoCoordinate newFrom: -5 @ 3);
		yourself.
	location3 := SMALocation new
		coordinates: (SMAGeoCoordinate newFrom: 13 @ -19);
		yourself.
	
	mapConfigurator := SMAMapConfigurator new.
	centerCoordinates := mapConfigurator calculateCenterGeoCoordinatesFrom: {location1 . location2 . location3}.
	
	self assert: centerCoordinates equals: (SMAGeoCoordinate newFrom: 6 @ -2)