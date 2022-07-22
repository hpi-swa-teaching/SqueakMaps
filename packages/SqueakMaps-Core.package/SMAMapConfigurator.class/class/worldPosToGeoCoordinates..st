coordinate converting
worldPosToGeoCoordinates: aWorldPos
	"Follows the calculation at http://mathworld.wolfram.com/MercatorProjection.html."
	
	| lat long |
	
	long := aWorldPos x * 360  - 180. 
	lat := aWorldPos y - 0.5 * (Float pi * 2).
	lat := lat sinh arcTan.
	lat := lat radiansToDegrees negated.
	
	^ SMAGeoCoordinate newLong: long Lat: lat