pin testing
testSaveIdenticalPins

	| location1 location2 |
	
	"self model class savedPins: OrderedCollection new."
	
	location1 := SMALocation new
		coordinates: (SMAGeoCoordinate newFrom: 11.576124 @ 48.137154);
		label: 'Munich';
		category: SMAPinCategory defaultCategory;
		yourself.
	
	location2 := SMALocation new
		coordinates: (SMAGeoCoordinate newFrom: 11.576124 @ 48.137154);
		label: 'Munich';
		category: SMAPinCategory defaultCategory;
		yourself.

	self model setSelectedPin: location1.
	[self model savePin] valueSupplyingAnswer: { 'Uncategorized' . 1 }.
	
	self model setSelectedPin: location2.
	[self model savePin] valueSupplyingAnswer: { 'Uncategorized' . 1 }.
	
	self assert: (self model class savedPins size) equals: 1