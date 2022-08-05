calculation
testGeoCoordinateWorldPosConversion

	| newYorkCoordinates newyorkWorldPos computedLong computedLat computedCoordinates precision |
	
	precision := 0.0000001.
	newYorkCoordinates := SMAGeoCoordinate newFrom: 40.7127281 @ -74.0060152.
	
	newyorkWorldPos := SMAMapConfigurator geoCoordinatesToWorldPos: newYorkCoordinates.
	computedCoordinates := (SMAMapConfigurator worldPosToGeoCoordinates: newyorkWorldPos).
	"Since floats are only stored with a limited accuracy in squeak, we need to convert the computed coordinates to a ScaledDecimal first and only then round"
	computedLong := computedCoordinates long asScaledDecimal.
	computedLat := computedCoordinates lat asScaledDecimal.
	computedCoordinates := SMAGeoCoordinate newFrom: ((computedLong @ computedLat) roundTo: precision).
	
	self assert: newYorkCoordinates equals: computedCoordinates
	
	