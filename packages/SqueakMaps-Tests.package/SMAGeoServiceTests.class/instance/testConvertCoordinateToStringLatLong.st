converting
testConvertCoordinateToStringLatLong

	| coordinatesNE coordinatesSE coordinatesSW coordinatesNW |
	
	coordinatesNE := SMAGeoCoordinate newLong: 10.123456789 Lat: 11.123456789.
	coordinatesSE := SMAGeoCoordinate newLong: 10.123456789 Lat: -11.123456789.
	coordinatesSW := SMAGeoCoordinate newLong: -10.123456789 Lat: -11.123456789.
	coordinatesNW := SMAGeoCoordinate newLong: -10.123456789 Lat: 11.123456789.
	
	self assert: coordinatesNE toStringLatLong equals: '11.123456789 °N, 10.123456789 °E'.
	self assert: coordinatesSE toStringLatLong equals: '11.123456789 °S, 10.123456789 °E'.
	self assert: coordinatesSW toStringLatLong equals: '11.123456789 °S, 10.123456789 °W'.
	self assert: coordinatesNW toStringLatLong equals: '11.123456789 °N, 10.123456789 °W'