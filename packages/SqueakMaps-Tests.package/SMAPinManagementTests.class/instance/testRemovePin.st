pin testing
testRemovePin

	| location |
	
	location := SMALocation new
		latLong: 11.576124@48.137154;
		label: 'Munich';
		yourself.

	model class savedPins add: location.
	model setSelectedPin: location.
	model removePin.
	self assert: (model class savedPins includes: location) equals: false.