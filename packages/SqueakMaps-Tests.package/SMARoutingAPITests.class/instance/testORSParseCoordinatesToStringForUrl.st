as yet unclassified
testORSParseCoordinatesToStringForUrl

	| orsAPI coordinates parsedCoordinates |
	coordinates := 13.117216@52.388978.
	orsAPI := SMAORSRoutingAPI new.
	
	parsedCoordinates := orsAPI parseCoordinatesToString: coordinates.
	self assert: parsedCoordinates equals: '13.117216,52.388978'