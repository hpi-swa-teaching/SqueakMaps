json parsing
makeRouteFrom: aJson

	^ SMARoute new
		waypoints: (self getWaypointsFrom: aJson);
		boundingBox: (self getBoundingBoxFrom: aJson);
		duration: (self getRouteDurationFrom: aJson);
		distance: (self getRouteDistanceFrom: aJson);
		yourself