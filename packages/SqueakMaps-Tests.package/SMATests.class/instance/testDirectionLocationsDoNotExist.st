ui
testDirectionLocationsDoNotExist
	
	| startPos |
	
	startPos :=self model tiledMapMorph center.

	"Destination does not exist"
	self geocoderMock mockLocateWith: [:query | { self berlinLocation }].
	self geocoderMock mockLocateWith: [:query | (SMALocationNameNotFoundError new requestedName: 'not-existing-1') signal].
	self model startSearchInput: 'Berlin'.
	self model destinationSearchInput: 'not-existing-1'.
	[self model searchDirections] valueSupplyingAnswer: { 'No location with name "not-existing-1" found.' . #closeDialog }.
	self assert: startPos equals: self model tiledMapMorph center.
	
	"Start does not exist"
	self geocoderMock mockLocateWith: [:query | (SMALocationNameNotFoundError new requestedName: 'not-existing-2') signal].
	self geocoderMock mockLocateWith: [:query | { self berlinLocation }].
	self model startSearchInput: 'not-existing-2'.
	self model destinationSearchInput: 'Berlin'.
	[self model searchDirections] valueSupplyingAnswer: { 'No location with name "not-existing-2" found.' . #closeDialog }.
	self assert: startPos equals: self model tiledMapMorph center.
	
	"Both do not exist"
	self geocoderMock mockLocateWith: [:query | (SMALocationNameNotFoundError new requestedName: 'not-existing-3') signal].
	self geocoderMock mockLocateWith: [:query | (SMALocationNameNotFoundError new requestedName: 'not-existing-4') signal].
	self model startSearchInput: 'not-existing-3'.
	self model destinationSearchInput: 'not-existing-4'.
	[self model searchDirections] valueSupplyingAnswer: { 'No location with name "not-existing-3" found.' . #closeDialog }.
	self assert: startPos equals: self model tiledMapMorph center