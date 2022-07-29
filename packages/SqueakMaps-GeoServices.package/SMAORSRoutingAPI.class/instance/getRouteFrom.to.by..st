searching
getRouteFrom: aStartGeoCoordinate to: anEndGeoCoordinate by: aSymbol

	| queryUrl json |
	
	queryUrl := self 
		queryUrlFrom: aStartGeoCoordinate 
		to: anEndGeoCoordinate 
		by: (self transportationModeLookup: aSymbol).
	json := self contentSource getJsonFrom: queryUrl.
	(json includesKey: 'error') ifTrue: [self handleErrorWithJson: json].
	
	^ self makeRouteFrom: json