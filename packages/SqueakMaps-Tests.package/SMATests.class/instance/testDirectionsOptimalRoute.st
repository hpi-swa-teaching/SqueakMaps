searching
testDirectionsOptimalRoute


	self geocoderMock mockLocateWith: [:query |
		self assert: query equals: 'Berlin'.
		{ self berlinLocation }].
	self geocoderMock mockLocateWith: [:query | 
		self assert: query equals: 'Paris'.
		{ self londonLocation }].
	self geocoderMock mockLocateWith: [:query | 
		self assert: query equals: 'London'.
		{ self parisLocation }].
	
	self model hopSearchInput: 'Berlin'.
	self model addHopSearchInput.
	self model hopSearchInput: 'Paris'.
	self model addHopSearchInput.
	self model hopSearchInput: 'London'.
	self model addHopSearchInput.
	self model navigator findOptimalRoute: self model hopLocations.

	self assert: (self model hopLocations at: 1) label = 'Berlin'.
	self assert: (self model hopLocations at: 2) label = 'London'.
	self assert: (self model hopLocations at: 3) label = 'Paris'.