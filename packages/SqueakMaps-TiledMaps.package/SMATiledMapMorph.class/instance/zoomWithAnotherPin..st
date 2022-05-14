event handling
zoomWithAnotherPin: aQueryString

	| first_pin second_pin new_box new_zoom results |
	
	results := geocoder locate: aQueryString.
	results isEmpty ifTrue: [
		UIManager default inform: 'No results found.'.
		^ self].
	first_pin := results first.
	second_pin := (geocoder locate: 'Paderborn') first.

	new_box := self getBoundingBoxFitting: first_pin and: second_pin.
	new_zoom := geocoder boundingBoxZoom: new_box.
	zoom := tileSource clampZoom: new_zoom.

	center := self calculateMidPoint: (first_pin worldPos) and: (second_pin worldPos).

	pins := Set with: first_pin.
	pins add: second_pin.
	self layoutChanged.
	self changed