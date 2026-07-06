testing - search
testTextAndCoordinateSearchUseInjectedGeocoder

	| geocoder navigator location coordinates |
	geocoder := SMAGeocoderMock new.
	navigator := SMANavigator new geocoder: geocoder; yourself.
	location := SMALocation new
		label: 'Potsdam';
		coordinates: (SMAGeoCoordinate newLong: 13.1 lat: 52.4);
		boundingBox: (13.09 @ 52.39 corner: 13.11 @ 52.41);
		yourself.
	geocoder mockLocateWith: [:query | self assert: query equals: 'Potsdam'. {location}].
	application navigator: navigator.
	application searchInput: 'Potsdam'.
	application searchLocation.
	self assert: application selectedPin == location.

	coordinates := SMAGeoCoordinate newLong: 13.2 lat: 52.5.
	geocoder mockReverseWithZoomWith: [:coordinate :zoom |
		self assert: coordinate == coordinates.
		location].
	application searchLocationFromCoordinates: coordinates.
	self assert: application selectedPin == location
