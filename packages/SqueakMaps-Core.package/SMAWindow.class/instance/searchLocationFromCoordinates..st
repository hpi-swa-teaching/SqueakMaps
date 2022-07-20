search
searchLocationFromCoordinates: aSMAGeoCoordinate

	| location zoom |
	
	zoom := self mapConfigurator getCurrentZoom.
	[location := self searchManager reverse: aSMAGeoCoordinate withZoom: zoom]
		on: SMALocationUnnameableError 
		do: [: error |
			location := SMALocation new
				label: aSMAGeoCoordinate lat asString, ', ', aSMAGeoCoordinate long asString;
				coordinates: aSMAGeoCoordinate;
				yourself].
	
	self switchToSearchViewWith: location.
	self mapConfigurator clear.
	self mapConfigurator displayLocation: location