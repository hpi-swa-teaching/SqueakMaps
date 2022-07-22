testing
testORSUnreachableDestination

	| startCoordinates endCoordinates transportationMode|
	
	"Coordinates do not have an influence on the output json, but are neccessary 
	to execute the method. However these coordinates would result in an error from the
	real API."
	startCoordinates := SMAGeoCoordinate newFrom: 23.671845 @70.671584.
	endCoordinates := SMAGeoCoordinate newFrom: -68.323636 @ -54.81924.
	transportationMode := #car.
	self orsAPI contentSource expectedReturn: #unreachableDestination.
	
	self should: [self orsAPI getRouteFrom: startCoordinates To: endCoordinates By: transportationMode] 
		raise: SMAUnreachableDestinationError
		description: 'Wrong error thrown'
		
	