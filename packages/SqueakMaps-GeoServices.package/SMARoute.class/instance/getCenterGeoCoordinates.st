calculating
getCenterGeoCoordinates
	"Calculates the midpoint on a straight line on a plane between the two given Coordinates."

	| firstCoordinates secondCoordinates long lat |
	
	firstCoordinates := self waypoints first.
	secondCoordinates := self waypoints last.
	
	long := firstCoordinates long + secondCoordinates long / 2.
	lat := firstCoordinates lat + secondCoordinates lat / 2.

	^ SMAGeoCoordinate newLong: long Lat: lat