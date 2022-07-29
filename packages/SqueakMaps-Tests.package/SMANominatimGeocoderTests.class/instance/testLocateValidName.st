testing
testLocateValidName

	| locationName expectedLocation expectedBbox returnedLocations returnedLocation |
	
	locationName := 'Berlin'.
	self geocoder contentSource mockGetJsonFromWith: [self validLocateResponse].
	
	expectedBbox := 13.088345 @ 52.3382448 corner: 13.7611609 @ 52.6755087.
	expectedLocation := SMALocation new
		label: 'Berlin, Germany';
		coordinates: (SMAGeoCoordinate newFrom: 13.3888599 @ 52.5170365);
		boundingBox: expectedBbox;
		yourself.
	
	returnedLocations := self geocoder locate: locationName.
	
	self assert: returnedLocations class equals: OrderedCollection.
	self assert: returnedLocations notEmpty.
	
	returnedLocation := returnedLocations first.
	
	self assert: returnedLocation class equals: SMALocation.
	self assert: returnedLocation label equals: expectedLocation label.
	self assert: returnedLocation coordinates equals: expectedLocation coordinates.
	self assert: returnedLocation boundingBox equals: expectedLocation boundingBox
	