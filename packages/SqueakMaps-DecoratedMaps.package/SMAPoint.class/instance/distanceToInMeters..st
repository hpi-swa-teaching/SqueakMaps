accessing
distanceToInMeters: aPoint

	| dlat dlon midLat r |
	r := 6371000.
	
	dlon := aPoint lon degreesToRadians - lon degreesToRadians.
	dlat := aPoint lat degreesToRadians - lat degreesToRadians.
	midLat := lat degreesToRadians + aPoint lat degreesToRadians / 2.
	
	^ r * ((dlat * (dlon / 2) cos) squared + (2 * midLat cos * (dlon / 2) sin) squared) sqrt