as yet unclassified
worldPosToLatLong: aWorldPos
	| lat long |
	
	long := aWorldPos x * 360  - 180. 
	lat := aWorldPos y - 0.5 * (Float pi * 2).
	lat := lat sinh arcTan.
	lat := lat radiansToDegrees negated.
	
	^ long@lat
	
	
	
	