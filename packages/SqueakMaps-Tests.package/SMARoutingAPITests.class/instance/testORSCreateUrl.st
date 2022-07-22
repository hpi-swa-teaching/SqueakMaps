testing
testORSCreateUrl

	| startCoordinates endCoordinates createdUrl correctUrl |

	startCoordinates := SMAGeoCoordinate newFrom: 13.117216 @ 52.388978.
	endCoordinates := SMAGeoCoordinate newFrom: 13.128289 @ 52.393838.
	
	createdUrl := self orsAPI queryUrlFrom: startCoordinates To: endCoordinates By: 'driving-car'.
	correctUrl := ('https://api.openrouteservice.org/v2/directions/driving-car?api_key=', SMAORSRoutingAPI apiKey, '&start=13.117216,52.388978&end=13.128289,52.393838') asUrl.
	
	self assert: createdUrl asString equals: correctUrl asString