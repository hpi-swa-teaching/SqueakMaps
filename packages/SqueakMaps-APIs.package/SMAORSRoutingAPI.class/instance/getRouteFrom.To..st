as yet unclassified
getRouteFrom: aStartLongLat To: anEndLongLat

	| queryUrl json route |
	
	queryUrl := self 
		queryUrlFrom: aStartLongLat 
		To: anEndLongLat 
		By: self defaultTransportationMode.
	json := self contentSource getJsonFrom: queryUrl.
	
	[route := self makeRouteFrom: json]
		on:	Error 
		do: [Error signal: ((json at: 'error') at: 'message')].
	^ route