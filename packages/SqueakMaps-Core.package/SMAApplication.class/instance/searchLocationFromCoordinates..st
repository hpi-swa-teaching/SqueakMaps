search
searchLocationFromCoordinates: aSMAGeoCoordinate

	| location zoom |
	
	zoom := self mapConfigurator getCurrentZoom.
	[location := self navigator reverse: aSMAGeoCoordinate withZoom: zoom]
		on: SMALocationUnnameableError 
		do: [: error |
			"if there is no location name found, a location will be displayed with
			the label containing the cordinates of the point"
			location := SMALocation new
				label: aSMAGeoCoordinate toStringLatLong;
				coordinates: aSMAGeoCoordinate;
				yourself].
	self currentView = #directions ifFalse: [
		self switchToSearchViewWith: location
	].
	self clear.
	
	self mapConfigurator displayLocation: location.
	self selectedPin: location.
	self routes isEmpty ifFalse: [
	self mapConfigurator displayRoutes: self routes].
		