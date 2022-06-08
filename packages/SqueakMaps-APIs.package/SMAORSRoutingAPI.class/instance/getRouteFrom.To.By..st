as yet unclassified
getRouteFrom: aStartLongLat To: anEndLongLat By: aSymbol

	| queryUrl json route |
	
	queryUrl := self 
		queryUrlFrom: aStartLongLat 
		To: anEndLongLat 
		By: (self transportationModeLookup: aSymbol).
	json := self contentSource getJsonFrom: queryUrl.
	
	[route := self makeRouteFrom: json]
		on:	Error 
		do: [Error signal: ((json at: 'error') at: 'message')].
	^ route