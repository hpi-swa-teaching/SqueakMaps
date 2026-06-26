searching
testAddPinToRoute
	
	self model switchToDirectionsView.
	
	"self geocoderMock mockLocateWith: [:query |
		self assert: query equals: 'Berlin'.
		{ self berlinLocation }].
	self geocoderMock mockLocateWith: [:query | 
		self assert: query equals: 'Paris'.
		{ self parisLocation }]."

	self model selectedPin: self berlinLocation.
	self model addSelectedPin.
	self model selectedPin: self parisLocation.
	self model addSelectedPin.

	self assert: (self model hopLocations at: 1) label = 'Berlin'.
	self assert: (self model hopLocations at: 2) label = 'Paris'.

	
	self model switchToEmptySearchView.