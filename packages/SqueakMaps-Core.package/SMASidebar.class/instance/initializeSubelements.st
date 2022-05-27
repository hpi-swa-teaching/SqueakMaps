initialization
initializeSubelements

	
	self addMorph: self searchButton.

	self addMorph: self newDestinationSearchColumn fullFrame: self startSearchColumnLayoutFrame.
	self addMorph: self newStartSearchColumn fullFrame: self startSearchColumnLayoutFrame.
	self addMorph: self newTransportationModeRow fullFrame: self transportationModeRowLayoutFrame.
	
	
		