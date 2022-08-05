helping
makeValidRoute

	| boundingBox distance duration waypoints |
	
	boundingBox := 13.128474 @ 52.39385 corner: 13.129373 @ 52.393877.
	distance := 61.
	duration := 16.
	waypoints := {
		SMAGeoCoordinate newLong: 13.128474 Lat: 52.39385 .
		SMAGeoCoordinate newLong:  13.128613 Lat: 52.393854 .
		SMAGeoCoordinate newLong:  13.128937 Lat: 52.393864 .
		SMAGeoCoordinate newLong:  13.129165 Lat: 52.39387 .
		SMAGeoCoordinate newLong:  13.129373 Lat: 52.393877 }.
		
	^ SMARoute new
		boundingBox: boundingBox;
		distance: distance;
		duration: duration;
		waypoints: waypoints;
		yourself.