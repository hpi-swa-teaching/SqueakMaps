testing
testCreateLocationUsesFallbackLabel

	| json location |
	json := Dictionary newFrom: {
		'lat' -> '52.4'.
		'lon' -> '13.1'.
		'boundingbox' -> #('52.3' '52.5' '13.0' '13.2') }.
	location := geocoder createLocationFrom: json with: 'Fallback'.

	self assert: location label equals: 'Fallback'.
	self assert: location coordinates equals: (SMAGeoCoordinate newLong: 13.1 lat: 52.4)
