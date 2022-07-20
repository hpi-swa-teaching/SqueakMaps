route operations
testRouteCenterCoordinates

	| startCoordinates endCoordinates randomCoordinates centerCoordinates route |
	
	startCoordinates := SMAGeoCoordinate newLong: -10.5 Lat: -10.5.
	endCoordinates := SMAGeoCoordinate newLong: 10.5 Lat: 10.5.
	randomCoordinates := SMAGeoCoordinate newLong: 100.3452 Lat: -54.9834.
	centerCoordinates := SMAGeoCoordinate newLong: 0 Lat: 0.
	
	route := SMARoute new.
	route waypoints: {startCoordinates . randomCoordinates . endCoordinates}.
	
	self assert: centerCoordinates equals: route getCenterGeoCoordinates.