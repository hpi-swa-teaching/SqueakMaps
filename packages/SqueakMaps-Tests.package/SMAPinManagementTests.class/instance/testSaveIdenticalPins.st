pin testing
testSaveIdenticalPins

	| pin1 pin2 |
	
	pin1 := SMAPin new
		latLong: 11.576124@48.137154;
		label: 'Munich';
		yourself.
	
	pin2 := SMAPin new
		latLong: 11.576124@48.137154;
		label: 'Munich';
		yourself.

	model setSelectedPin: pin1.
	model savePin.
	
	model setSelectedPin: pin2.
	model savePin.
	
	self assert: (model class savedPins size) equals: 1.