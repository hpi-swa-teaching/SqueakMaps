as yet unclassified
getWaypointsFrom: aJson

	| routeCoordinatesJson |
	
	routeCoordinatesJson := (((aJson at: 'features') at: 1) at: 'geometry') at: 'coordinates'.
	^ routeCoordinatesJson collect: [:coords | (coords first) @ (coords second)]