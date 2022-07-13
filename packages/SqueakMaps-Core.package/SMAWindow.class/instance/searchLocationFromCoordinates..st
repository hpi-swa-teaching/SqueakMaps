search
searchLocationFromCoordinates: aLatLong

	| location zoom |
	
	zoom := self mapConfigurator getCurrentZoom.
	location := self searchManager reverse: aLatLong withZoom: zoom.
	self switchToSearchViewWith: location.
	self mapConfigurator displayLocation: location