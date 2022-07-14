search
searchLocationFromCoordinates: aLatLong

	| location zoom |
	
	zoom := self mapConfigurator getCurrentZoom.
	[location := self searchManager reverse: aLatLong withZoom: zoom]
		on: SMALocationUnnameableError 
		do: [: error |
			location := SMALocation new
				label: aLatLong y asString, ', ', aLatLong x asString;
				latLong: aLatLong;
				yourself].
	
	self setSelectedPin: location.
	self mapConfigurator displayLocation: location