accessing
locate: aQueryString

	| results result |
	
	results := geocoder locate: aQueryString.
	results isEmpty ifTrue: [
		UIManager default inform: 'No results found.'.
		^ self].
	result := results first. "TODO: Incorporate the others"
	center := result worldPos.
	zoom := tileSource clampZoom: result zoom.
	pins := Set with: result.
	self layoutChanged.
	self changed