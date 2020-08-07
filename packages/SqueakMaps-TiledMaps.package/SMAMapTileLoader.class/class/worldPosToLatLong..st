as yet unclassified
worldPosToLatLong: aWorldPos
	
	| lat long |
	"Follows the calculation at http://mathworld.wolfram.com/MercatorProjection.html."
	long := aWorldPos x * 360  - 180. 
	lat := aWorldPos y - 0.5 * (Float pi * 2).
	lat := lat sinh arcTan.
	lat := lat radiansToDegrees negated.
	
	^ long@lat