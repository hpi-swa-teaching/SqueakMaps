search
searchLocationFromCoordinates: aSMAGeoCoordinate

	| location zoom |
	
	zoom := self mapConfigurator getCurrentZoom.
	[location := self navigator reverse: aSMAGeoCoordinate withZoom: zoom]
		on: SMALocationUnnameableError 
		do: [: error |
			"When there was no location name found, a location shall be displayed with
			the label that contains the cordinates of the point"
			location := SMALocation new
				label: aSMAGeoCoordinate toStringLatLong;
				coordinates: aSMAGeoCoordinate;
				yourself].
	
	self switchToSearchViewWith: location.
	self mapConfigurator 
		clear;
		displayLocation: location