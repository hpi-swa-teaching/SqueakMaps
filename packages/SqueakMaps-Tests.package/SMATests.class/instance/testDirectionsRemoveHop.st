ui
testDirectionsRemoveHop

	self geocoderMock mockLocateWith: [:query | { self berlinLocation }].
	self geocoderMock mockLocateWith: [:query | (SMALocationNameNotFoundError new requestedName: 'not-existing-1') signal].
	self model hopSearchInput: 'Berlin'.
	self model addHopSearchInput.
	self model selectedHopIndex: 1.
	self model removeHop.
	self assert: self model hopLocations size = 0.