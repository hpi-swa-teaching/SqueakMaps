testing
testORSParseLongLatToStringForUrl

	| coordinates parsedCoordinates |
	
	coordinates := SMAGeoCoordinate newFrom: 13.117216 @ 52.388978.
	
	parsedCoordinates := self orsAPI parseCoordinatesToString: coordinates.
	self assert: parsedCoordinates equals: '13.117216,52.388978'