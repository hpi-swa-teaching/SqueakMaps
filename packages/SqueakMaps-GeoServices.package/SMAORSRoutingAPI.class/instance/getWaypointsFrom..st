json parsing
getWaypointsFrom: aJson

	| routeCoordinatesJson |
	
	routeCoordinatesJson := (((aJson at: 'features') first) at: 'geometry') at: 'coordinates'.
	^ routeCoordinatesJson collect: [:coords | 
		SMAGeoCoordinate newLong: coords first lat: coords second]