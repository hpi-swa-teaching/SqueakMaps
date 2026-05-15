pin testing
testSavePin

	| location |
	"self model class savedPins: OrderedCollection new."
	
	location := SMALocation new
		coordinates: (SMAGeoCoordinate newFrom: 11.576124@48.137154);
		label: 'Munich';
		category: SMAPinCategory defaultCategory;
		yourself.

	self model setSelectedPin: location.
	[self model savePin] valueSupplyingAnswer: { 'Select category' . 1 }.
	self assert: (self model class savedPins includes: location) equals: true