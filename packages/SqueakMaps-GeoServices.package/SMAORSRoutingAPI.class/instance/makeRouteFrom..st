as yet unclassified
makeRouteFrom: aJson

	| route |
	
	route := SMARoute new.
	route
		points: (self getWaypointsFrom: aJson);
		boundingBox: (self getBoundingBoxFrom: aJson);
		duration: (self getRouteDurationFrom: aJson);
		distance: (self getRouteDistanceFrom: aJson);
		yourself.
		
	^ route