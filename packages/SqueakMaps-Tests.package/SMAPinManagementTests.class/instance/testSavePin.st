pin testing
testSavePin

	| pin |
	
	pin := SMAPin new
		latLong: 11.576124@48.137154;
		label: 'Munich';
		yourself.

	model setSelectedPin: pin.
	model savePin.
	self assert: (model class savedPins includes: pin) equals: true.