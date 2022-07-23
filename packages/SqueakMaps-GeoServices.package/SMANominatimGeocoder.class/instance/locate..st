searching
locate: aQueryString

	| queryUrlString json | 

	queryUrlString := self queryUrlFor: aQueryString.
	json := self contentSource getJsonFrom: queryUrlString.
	^ (json collect: [:result | self createLocationFrom: result with: aQueryString])
		ifEmpty: [
		(SMALocationNameNotFoundError new
			requestedName: aQueryString) signal]