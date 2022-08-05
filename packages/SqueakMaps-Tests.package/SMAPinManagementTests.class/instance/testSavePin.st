pin testing
testSavePin

	| location |
	
	location := SMALocation new
		coordinates: (SMAGeoCoordinate newFrom: 11.576124@48.137154);
		label: 'Munich';
		yourself.

	self model setSelectedPin: location.
	self model savePin.
	self assert: (self model class savedPins includes: location) equals: true