calculation
testCalculateBoundingBox

	| location1 location2 location3 mapConfigurator boundingBox |
	
	location1 := SMALocation new
		coordinates: (SMAGeoCoordinate newFrom: 10 @ 10);
		boundingBox: (9 @ 9 corner: 11 @ 11);
		yourself.
	location2 := SMALocation new
		coordinates: (SMAGeoCoordinate newFrom: -5 @ 3);
		boundingBox: (-6 @ 2 corner: -4 @ 4);
		yourself.
	location3 := SMALocation new
		coordinates: (SMAGeoCoordinate newFrom: 12 @ -7);
		boundingBox: (11 @ -8 corner: 13 @ -6);
		yourself.
	
	mapConfigurator := SMAMapConfigurator new.
	boundingBox := mapConfigurator calculateBoundingBoxFrom: {location1 . location2 . location3}.
	
	self assert: boundingBox equals: (-6 @ -8 corner: 13 @ 11)