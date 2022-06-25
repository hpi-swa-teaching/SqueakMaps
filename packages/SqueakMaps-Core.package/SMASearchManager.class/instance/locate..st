as yet unclassified
locate: aQueryString

	| results |
	
	results := self geocoder locate: aQueryString.
	results isEmpty ifTrue: [Error signal: 'No results found.'].
	^ results first