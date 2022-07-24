pin testing
testSavePin

	| location |
	
	location := SMALocation new
		coordinates: (SMAGeoCoordinate newFrom: 11.576124@48.137154);
		label: 'Munich';
		yourself.

	model setSelectedPin: location.
	model savePin.
	self assert: (model class savedPins includes: location) equals: true