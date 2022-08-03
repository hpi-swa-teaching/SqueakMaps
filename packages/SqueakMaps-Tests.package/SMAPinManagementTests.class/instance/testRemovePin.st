pin testing
testRemovePin

	| location |
	
	location := SMALocation new
		coordinates: (SMAGeoCoordinate newFrom: 11.576124 @ 48.137154);
		label: 'Munich';
		yourself.

	self model class savedPins add: location.
	self model setSelectedPin: location.
	self model removePin.
	self assert: (self model class savedPins includes: location) equals: false