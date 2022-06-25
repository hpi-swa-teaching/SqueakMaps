as yet unclassified
locate: aQueryString

	| results |
	
	results := self geocoder locate: aQueryString.
	results isEmpty ifTrue: [Error signal: 'No results found.'].
	^ results first.

	"self setSelectedPinTo: result latLong labelled: result label.
	self tiledMapMorph center: result worldPos.
	self tiledMapMorph zoom: (self tiledMapMorph tileSource clampZoom: result zoom).
	
	Is the following actually needed? There seems to be no change without it:
	self tiledMapMorph layoutChanged.
	self tiledMapMorph changed"