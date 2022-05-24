as yet unclassified
makeRouteFrom: aJson

	| route |
	
	route := SMARoute new.
	route points: (self getWaypointsFrom: aJson).
	route boundingBox: (self getBoundingBoxFrom: aJson).
	^ route