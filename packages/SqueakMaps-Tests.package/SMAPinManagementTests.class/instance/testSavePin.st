pin testing
testSavePin

	| location |
	
	location := SMALocation new
		coordinates: (SMAGeoCoordinate newFrom: 11.576124@48.137154);
		label: 'Munich';
		category: SMAPinCategory defaultCategory;
		yourself.

	self model setSelectedPin: location.
	[self model savePin] valueSupplyingAnswer: { 'Select category' . 'Uncategorized' }.
	self assert: (self model class savedPins includes: location) equals: true