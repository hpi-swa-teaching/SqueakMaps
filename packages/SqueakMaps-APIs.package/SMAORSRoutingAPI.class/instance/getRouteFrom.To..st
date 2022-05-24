as yet unclassified
getRouteFrom: aStartLongLat To: anEndLongLat

	| queryUrl json |
	
	queryUrl := self 
		queryUrlFrom: aStartLongLat 
		To: anEndLongLat 
		By: self defaultTransportationMode.
	json := self contentSource getJsonFrom: queryUrl.
	
	^ self makeRouteFrom: json