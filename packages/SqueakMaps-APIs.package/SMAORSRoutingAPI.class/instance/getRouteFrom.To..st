as yet unclassified
getRouteFrom: aStartLongLat To: anEndLongLat

	| queryUrl json |
	
	queryUrl := self 
		queryUrlFrom: aStartLongLat 
		To: anEndLongLat 
		By: self defaultTransportationMode.
	json := Json readFrom: queryUrl retrieveContents contentStream.
	
	^ self makeRouteFrom: json