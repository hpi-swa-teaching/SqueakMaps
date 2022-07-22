coordinate converting
worldPosToGeoCoordinates: aWorldPos
	"Mercator Projection. Follows the calculation at 	http://mathworld.wolfram.com/MercatorProjection.html."
	
	| lat long |
	
	"Shift long to Interval [-180, 180]"
	long := aWorldPos x * 360  - 180. 
	"Scale lat to Interval [-PI, +PI] --> Radians"
	lat := aWorldPos y - 0.5 * (Float pi * 2).
	"Do transformation"
	lat := lat sinh arcTan.
	"Positive latitude is 'up'."
	lat := lat radiansToDegrees negated.
	
	^ SMAGeoCoordinate newLong: long Lat: lat