testing
testLocateAndReverseDelegateToGeocoder

	| navigator geocoder location coordinate reverseLocation |
	navigator := SMANavigator new.
	geocoder := SMAGeocoderMock new.
	location := SMALocation new label: 'Berlin'; yourself.
	coordinate := SMAGeoCoordinate newLong: 13 lat: 52.
	reverseLocation := SMALocation new label: 'Reverse'; yourself.
	geocoder mockLocateWith: [:query | self assert: query equals: 'Berlin'. {location}].
	geocoder mockReverseWithZoomWith: [:received :zoom |
		self assert: received == coordinate.
		self assert: zoom equals: 17.
		reverseLocation].
	navigator geocoder: geocoder.

	self assert: (navigator locate: 'Berlin') == location.
	self assert: (navigator reverse: coordinate withZoom: 17) == reverseLocation
