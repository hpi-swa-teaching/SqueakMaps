searching
getRouteFrom: aStartGeoCoordinate To: anEndGeoCoordinate By: aSymbol

	| queryUrl json |

	queryUrl := self 
		queryUrlFrom: aStartGeoCoordinate 
		To: anEndGeoCoordinate 
		By: (self transportationModeLookup: aSymbol).
	json := self contentSource getJsonFrom: queryUrl.
	
	(json includesKey: 'error') ifTrue: [self handleErrorWithJson: json].
	
	^ self makeRouteFrom: json