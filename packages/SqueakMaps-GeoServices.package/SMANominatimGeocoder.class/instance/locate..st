searching
locate: aQueryString

	| queryUrlString json locations | 

	queryUrlString := self queryUrlFor: aQueryString.
	json := self contentSource getJsonFrom: queryUrlString.
	locations := json collect: [:result | self createLocationFrom: result with: aQueryString].
	locations ifEmpty: [
		(SMALocationNameNotFoundError new			
			requestedName: aQueryString) signal].
	^ locations