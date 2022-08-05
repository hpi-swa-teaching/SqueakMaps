coordinate converting
geoCoordinatesToWorldPos: aSMAGeoCoordinate
	"Greenwich is at 0.5 x, equator is at 0.5 y. North pole at 0 y, Americas at ~0.25 x."
	
	| x y |

	"Shift x to interval [0, 1]"
	x := (aSMAGeoCoordinate long + 180 \\ 360 / 360) asFloat.
	"Positive latitude is 'up'."
	y := aSMAGeoCoordinate lat degreesToRadians negated. 
	"First, map onto the interval (-pi/2, pi/2)."
	y := ((y + (Float pi / 2)) \\ Float pi) - (Float pi / 2).
	"Now compute per definition at http://mathworld.wolfram.com/MercatorProjection.html."
	y := y sin.
	y := ((1 + y) / (1 - y)) ln * 0.5.
	"Map radians (?) onto the 1x1 tile."
	y := y / (Float pi * 2).
	"Finally, the equator is at 0.5."
	y := y + 0.5.
	
	^ x @ y