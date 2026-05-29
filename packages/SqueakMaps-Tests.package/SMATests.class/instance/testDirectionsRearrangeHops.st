searching
testDirectionsRearrangeHops
	
	| upButton downButton |
	
	self model switchToDirectionsView.
	upButton := (self subject findByLabel: 'U').
	downButton := (self subject findByLabel: 'D').
	
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
	
	self model selectedHopIndex: 1.
	downButton click.
	
	self assert: (self model hopLocations at: 1) label = 'Paris'.
	self assert: (self model hopLocations at: 2) label = 'Berlin'.
	self assert: self model selectedHopIndex = 2.
	
	upButton click.
	
	self assert: (self model hopLocations at: 1) label = 'Berlin'.
	self assert: (self model hopLocations at: 2) label = 'Paris'.
	self assert: self model selectedHopIndex = 1.
	
	self model switchToEmptySearchView.