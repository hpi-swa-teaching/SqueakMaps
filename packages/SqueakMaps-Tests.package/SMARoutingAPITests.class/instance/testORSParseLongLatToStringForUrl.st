as yet unclassified
testORSParseLongLatToStringForUrl

	| longLat parsedLongLat |
	longLat := 13.117216@52.388978.
	
	parsedLongLat := self orsAPI parseCoordinatesToString: longLat.
	self assert: parsedLongLat equals: '13.117216,52.388978'