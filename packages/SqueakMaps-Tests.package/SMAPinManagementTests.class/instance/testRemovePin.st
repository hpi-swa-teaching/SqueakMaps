pin testing
testRemovePin

	| pin |
	
	pin := SMAPin new
		latLong: 11.576124@48.137154;
		label: 'Munich';
		yourself.

	model class savedPins add: pin.
	model setSelectedPin: pin.
	model removePin.
	self assert: (model class savedPins includes: pin) equals: false.