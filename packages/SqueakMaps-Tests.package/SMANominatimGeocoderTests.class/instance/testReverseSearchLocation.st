testing
testReverseSearchLocation

	| searchCoordinates searchZoom expectedLocation expectedBbox returnedLocation |
	
	self geocoder contentSource mockGetJsonFromWith: [self validReverseSearchResponse].
	searchCoordinates := SMAGeoCoordinate newFrom: 13.055921049182132 @ 52.399259999481764.
	searchZoom := 15.
	
	expectedBbox := 12.8867757 @ 52.3420411 corner: 13.1682033 @ 52.5146876.
	expectedLocation := SMALocation new
		label: 'Potsdam, Brandenburg, Germany';
		coordinates: searchCoordinates;
		boundingBox: expectedBbox;
		yourself.
	
	returnedLocation := self geocoder reverse: searchCoordinates withZoom: searchZoom.
	
	self assert: returnedLocation class equals: SMALocation.
	self assert: returnedLocation label equals: expectedLocation label.
	self assert: returnedLocation coordinates equals: expectedLocation coordinates.
	self assert: returnedLocation boundingBox equals: expectedLocation boundingBox
	

	