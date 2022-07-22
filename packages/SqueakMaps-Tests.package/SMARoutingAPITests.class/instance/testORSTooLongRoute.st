testing
testORSTooLongRoute

	| startCoordinates endCoordinates transportationMode |
	
	"Coordinates do not have an influence on the output, but are neccessary 
	to execute the method. However these coordinates would result in an error from the
	real API."
	startCoordinates := SMAGeoCoordinate newFrom: 179.128471 @ 89.393886.
	endCoordinates := SMAGeoCoordinate newFrom: 13.129373 @ 52.393876.
	transportationMode := #car.
	self orsAPI contentSource expectedReturn: #tooLongRoute.
	
	self should: [self orsAPI getRouteFrom: startCoordinates to: endCoordinates by: transportationMode] 
		raise: SMARouteTooLongError
		description: 'Wrong error thrown'