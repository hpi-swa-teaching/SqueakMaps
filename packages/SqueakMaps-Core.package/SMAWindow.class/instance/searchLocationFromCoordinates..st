search
searchLocationFromCoordinates: aLatLong

	| pin zoom |
	zoom := self mapConfigurator getCurrentZoom.
	pin := self searchManager reverse: aLatLong withZoom: zoom.
	self setSelectedPin: pin.
	self mapConfigurator displayLocation: pin