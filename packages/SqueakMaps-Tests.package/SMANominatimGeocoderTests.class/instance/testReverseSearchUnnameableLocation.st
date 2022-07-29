testing
testReverseSearchUnnameableLocation

	| coordinates zoom |
	
	coordinates := SMAGeoCoordinate newLong: -43.28078383281252 Lat: -23.34545570478604.
	zoom := 15.
	
	self geocoder contentSource mockGetJsonFromWith: [self unnameableLocationResponse].
	
	self should: [self geocoder reverse: coordinates withZoom: zoom]
		raise: SMALocationUnnameableError 
		withExceptionDo: [:error |
			self assert: error coordinates equals: coordinates.
			self assert: error messageText equals: 'Unable to geocode'].
