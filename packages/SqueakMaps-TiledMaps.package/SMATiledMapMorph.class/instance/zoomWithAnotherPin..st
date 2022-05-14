event handling
zoomWithAnotherPin: aQueryString

	| first_pin second_pin new_box new_zoom results result |
	
	results := geocoder locate: aQueryString.
	results isEmpty ifTrue: [
		UIManager default inform: 'No results found.'.
		^ self].
	first_pin := results first.
	second_pin := (geocoder locate: 'Paderborn') first.

	new_box := self getBoundingBoxFitting: first_pin and: second_pin.
	new_zoom := geocoder boundingBoxZoom: new_box.

	center := result worldPos.
	zoom := tileSource clampZoom: new_zoom.

	pins := Set with: result.
	self layoutChanged.
	self changed