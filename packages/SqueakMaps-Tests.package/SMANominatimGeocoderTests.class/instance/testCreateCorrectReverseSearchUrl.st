testing
testCreateCorrectReverseSearchUrl

	| coordinates zoom expectedUrl actualUrl |
	
	coordinates := SMAGeoCoordinate newLong: 13.055921049182132 Lat: 52.399259999481764.
	zoom := 12.
	expectedUrl := 'https://nominatim.openstreetmap.org/reverse.php?lat=52.399259999481764&lon=13.055921049182132&zoom=12&format=jsonv2&accept-language=en-US' asUrl.
	
	actualUrl := self geocoder reverseUrlFor: coordinates withZoom: zoom.
	
	self assert: actualUrl equals: expectedUrl.