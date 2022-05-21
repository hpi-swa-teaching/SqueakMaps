as yet unclassified
testORSCreateUrl

	| latLongStart latLongEnd apiKey orsAPI createdUrl correctUrl |

	latLongStart := 13.117216@52.388978.
	latLongEnd := 13.128289@52.393838.
	apiKey := '0123'.
	
	orsAPI := SMAORSRoutingAPI new.
	orsAPI apiKey: apiKey.
	
	createdUrl := orsAPI queryUrlFrom: latLongStart To: latLongEnd By: 'driving-car'.
	correctUrl := 'https://api.openrouteservice.org/v2/directions/driving-car?api_key=0123&start=13.117216,52.388978&end=13.128289,52.393838' asUrl.
	
	self assert: createdUrl asString equals: correctUrl asString.