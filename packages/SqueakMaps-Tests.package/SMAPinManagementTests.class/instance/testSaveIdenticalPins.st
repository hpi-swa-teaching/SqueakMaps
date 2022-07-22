pin testing
testSaveIdenticalPins

	| location1 location2 |
	
	location1 := SMALocation new
		coordinates: (SMAGeoCoordinate newFrom: 11.576124 @ 48.137154);
		label: 'Munich';
		yourself.
	
	location2 := SMALocation new
		coordinates: (SMAGeoCoordinate newFrom: 11.576124 @ 48.137154);
		label: 'Munich';
		yourself.

	model setSelectedPin: location1.
	model savePin.
	
	model setSelectedPin: location2.
	model savePin.
	
	self assert: (model class savedPins size) equals: 1