as yet unclassified
getRouteFrom: aStartLongLat To: anEndLongLat

	| queryUrl json |
	
	queryUrl := self queryUrlFrom: aStartLongLat To: anEndLongLat By: 'driving-car'.
	json := Json readFrom: queryUrl retrieveContents contentStream.
	
	^ self makeRouteFrom: json