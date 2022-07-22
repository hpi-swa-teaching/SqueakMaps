search
searchLocationFromCoordinates: aSMAGeoCoordinate

	| location zoom |
	
	zoom := self mapConfigurator getCurrentZoom.
	[location := self searchManager reverse: aSMAGeoCoordinate withZoom: zoom]
		on: SMALocationUnnameableError 
		do: [: error |
			location := SMALocation new
				label: aSMAGeoCoordinate toStringLatLong;
				coordinates: aSMAGeoCoordinate;
				yourself].
	
	self switchToSearchViewWith: location.
	self mapConfigurator 
		clear;
		displayLocation: location