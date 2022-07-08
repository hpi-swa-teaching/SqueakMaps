searching
locate: aQueryString

	| locations |
	
	locations := self geocoder locate: aQueryString.
	locations isEmpty ifTrue: [Error signal: 'No results found.'].
	^ locations first