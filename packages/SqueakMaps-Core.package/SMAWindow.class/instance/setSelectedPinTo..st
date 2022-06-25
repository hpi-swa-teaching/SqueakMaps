pin management
setSelectedPinTo: aLatLong

	| label |
	label := self geocoder reverse: aLatLong withZoom: self tiledMapMorph zoom.
	self setSelectedPinTo: aLatLong labeled: label.