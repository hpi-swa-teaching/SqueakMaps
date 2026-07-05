geometry
distanceFrom: aPoint to: anotherPoint

	| dLat dLon |
	dLat := aPoint lat - anotherPoint lat.
	dLon := aPoint lon - anotherPoint lon.
	^ ((dLat * dLat) + (dLon * dLon)) sqrt
