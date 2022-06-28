searching
locate: aQueryString

	| pins |
	
	pins := self geocoder locate: aQueryString.
	pins isEmpty ifTrue: [Error signal: 'No results found.'].
	^ pins first