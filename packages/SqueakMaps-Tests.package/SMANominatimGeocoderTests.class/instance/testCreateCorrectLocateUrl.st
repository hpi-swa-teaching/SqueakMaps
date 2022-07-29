testing
testCreateCorrectLocateUrl

	| locationName expectedUrl actualUrl |
	
	locationName := 'Berlin'.
	expectedUrl := 'https://nominatim.openstreetmap.org/search/?q=Berlin&format=jsonv2&accept-language=en-US' asUrl.
	
	actualUrl := self geocoder queryUrlFor: locationName.
	
	self assert: actualUrl equals: expectedUrl.