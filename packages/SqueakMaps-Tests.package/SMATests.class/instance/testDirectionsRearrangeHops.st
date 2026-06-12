searching
testDirectionsRearrangeHops
	
	self model switchToDirectionsView.
	
	self geocoderMock mockLocateWith: [:query |
		self assert: query equals: 'Berlin'.
		{ self berlinLocation }].
	self geocoderMock mockLocateWith: [:query | 
		self assert: query equals: 'Paris'.
		{ self parisLocation }].

	self model hopSearchInput: 'Berlin'.
	self model addHopSearchInput.
	self model hopSearchInput: 'Paris'.
	self model addHopSearchInput.
	
	self model dropItem: (self model dragItem: 1) on: 2 copy: false.
	
	self assert: (self model hopLocations at: 1) label = 'Paris'.
	self assert: (self model hopLocations at: 2) label = 'Berlin'.
	
	self model dropItem: (self model dragItem: 1) on: 2 copy: false.
	
	self assert: (self model hopLocations at: 1) label = 'Berlin'.
	self assert: (self model hopLocations at: 2) label = 'Paris'.
	
	self model switchToEmptySearchView.