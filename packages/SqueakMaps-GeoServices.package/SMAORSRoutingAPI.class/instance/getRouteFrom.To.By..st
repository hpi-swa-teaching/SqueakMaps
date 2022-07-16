searching
getRouteFrom: aStartLongLat To: anEndLongLat By: aSymbol

	| queryUrl json |
	
	queryUrl := self 
		queryUrlFrom: aStartLongLat 
		To: anEndLongLat 
		By: (self transportationModeLookup: aSymbol).
	json := self contentSource getJsonFrom: queryUrl.
	
	(json includesKey: 'error') ifTrue: [self handleErrorWithJson: json].
	
	^ self makeRouteFrom: json