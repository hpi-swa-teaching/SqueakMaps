converting
testConvertCoordinateToStringLongLat

	| coordinatesNE coordinatesSE coordinatesSW coordinatesNW |
	
	coordinatesNE := SMAGeoCoordinate newLong: 10.123456789 Lat: 11.123456789.
	coordinatesSE := SMAGeoCoordinate newLong: 10.123456789 Lat: -11.123456789.
	coordinatesSW := SMAGeoCoordinate newLong: -10.123456789 Lat: -11.123456789.
	coordinatesNW := SMAGeoCoordinate newLong: -10.123456789 Lat: 11.123456789.
	
	self assert: coordinatesNE toStringLongLat equals: '10.123456789 °E, 11.123456789 °N'.
	self assert: coordinatesSE toStringLongLat equals: '10.123456789 °E, 11.123456789 °S'.
	self assert: coordinatesSW toStringLongLat equals: '10.123456789 °W, 11.123456789 °S'.
	self assert: coordinatesNW toStringLongLat equals: '10.123456789 °W, 11.123456789 °N'