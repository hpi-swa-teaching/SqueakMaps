testing
testORSTooLongRoute

	| longLatStart longLatEnd transportationMode |
	
	"Coordinates do not have an influence on the output, but are neccessary 
	to execute the method. However these coordinates would result in an error from the
	real API."
	longLatStart := 179.128471 @ 89.393886.
	longLatEnd := 13.129373 @ 52.393876.
	transportationMode := #car.
	self orsAPI contentSource expectedReturn: #tooLongRoute.
	
	self should: [self orsAPI getRouteFrom: longLatStart To: longLatEnd By: transportationMode] 
		raise: Error
		whoseDescriptionIncludes: 'Could not find routable point'
		description: 'Wrong error thrown'.