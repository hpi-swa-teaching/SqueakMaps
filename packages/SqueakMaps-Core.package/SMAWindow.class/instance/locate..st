initialization
locate: aQueryString

	| results result |
	
	results := self geocoder locate: aQueryString.
	results isEmpty ifTrue: [
		UIManager default inform: 'No results found.'.
		^ self].
	result := results first. "TODO: Incorporate the others"
	self tiledMapMorph center: result worldPos.
	self tiledMapMorph zoom: (self tiledMapMorph tileSource clampZoom: result zoom).
	self tiledMapMorph pins: (Set with: result).
	self tiledMapMorph layoutChanged.
	self tiledMapMorph changed