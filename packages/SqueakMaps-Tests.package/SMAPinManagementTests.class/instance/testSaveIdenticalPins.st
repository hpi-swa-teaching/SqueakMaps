pin testing
testSaveIdenticalPins

	| location1 location2 |
	
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
	[self model savePin] valueSupplyingAnswer: { 'Select category' . 'Uncategorized' }.

	self model setSelectedPin: location2.
	[self model savePin] valueSupplyingAnswers: {{ 'Select category' . 'Uncategorized' }. { 'No duplicate names allowed.' . #closeDialog }}.

	self assert: (self model class savedPins size) equals: 1