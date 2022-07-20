accessing
getCenterGeoCoordinates

	"Calculates the midpoint on a straight line on a plane between the two given Points."

	| firstPoint secondPoint long lat |
	
	firstPoint := self points first.
	secondPoint := self points last.
	
	long := firstPoint long + secondPoint long / 2.
	lat := firstPoint lat + secondPoint lat / 2.

	^ SMAGeoCoordinate newLong: long Lat: lat