locating
locate: aQueryString

	| results result |
	
	results := self geocoder locate: aQueryString.
	results isEmpty ifTrue: [
		UIManager default inform: 'No results found.'.
		^ self].
	result := results first. "TODO: Incorporate the others"
	self center: result worldPos.
	self zoom: (self tileSource clampZoom: result zoom).
	self pins: (Set with: result).
	self layoutChanged.
	self changed