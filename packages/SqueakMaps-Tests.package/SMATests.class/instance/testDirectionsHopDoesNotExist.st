ui
testDirectionsHopDoesNotExist

	| worldposMiddle |
	
	worldposMiddle := 0.5 @ 0.5.

	self geocoderMock mockLocateWith: [:query | { self berlinLocation }].
	self geocoderMock mockLocateWith: [:query | (SMALocationNameNotFoundError new requestedName: 'not-existing-1') signal].
	self model hopSearchInput: 'Berlin'.
	self model addHopSearchInput.
	self model hopSearchInput: 'not-existing-1'.
	[self model addHopSearchInput] valueSupplyingAnswer: { 'No location with name "not-existing-1" found.' . #closeDialog }.
	self assert: (worldposMiddle - (self model tiledMapMorph center) < (0.1@0.1)).