testing
testORSCreateUrl

	| longLatStart longLatEnd createdUrl correctUrl |

	longLatStart := 13.117216@52.388978.
	longLatEnd := 13.128289@52.393838.
	
	createdUrl := self orsAPI queryUrlFrom: longLatStart To: longLatEnd By: 'driving-car'.
	correctUrl := ('https://api.openrouteservice.org/v2/directions/driving-car?api_key=', SMAORSRoutingAPI ApiKey, '&start=13.117216,52.388978&end=13.128289,52.393838') asUrl.
	
	self assert: createdUrl asString equals: correctUrl asString.