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

	self model setSelectedPin: location1.
	self model savePin.
	
	self model setSelectedPin: location2.
	self model savePin.
	
	self assert: (self model class savedPins size) equals: 1