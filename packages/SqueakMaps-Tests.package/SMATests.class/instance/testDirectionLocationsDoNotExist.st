ui
testDirectionLocationsDoNotExist
	
	| worldposMiddle |
	
	worldposMiddle := 0.5 @ 0.5.

	"Destination does not exist"
	self geocoderMock mockLocateWith: [:query | { self berlinLocation }].
	self geocoderMock mockLocateWith: [:query | (SMALocationNameNotFoundError new requestedName: 'not-existing-1') signal].
	self model hopSearchInput: 'Berlin'.
	self model addHopSearchInput.
	self model hopSearchInput: 'not-existing-1'.
	self model addHopSearchInput.
	[self model searchDirections] valueSupplyingAnswer: { 'No location with name "not-existing-1" found.' . #closeDialog }.
	self assert: worldposMiddle equals: (self model tiledMapMorph center).
	
	"Start does not exist"
	self geocoderMock mockLocateWith: [:query | (SMALocationNameNotFoundError new requestedName: 'not-existing-2') signal].
	self geocoderMock mockLocateWith: [:query | { self berlinLocation }].
	self model hopSearchInput: 'not-existing-2'.
	self model addHopSearchInput.
	self model hopSearchInput: 'Berlin'.
	self model addHopSearchInput.
	[self model searchDirections] valueSupplyingAnswer: { 'No location with name "not-existing-2" found.' . #closeDialog }.
	self assert: worldposMiddle equals: self model tiledMapMorph center.
	
	"Both do not exist"
	self geocoderMock mockLocateWith: [:query | (SMALocationNameNotFoundError new requestedName: 'not-existing-3') signal].
	self geocoderMock mockLocateWith: [:query | (SMALocationNameNotFoundError new requestedName: 'not-existing-4') signal].
	self model hopSearchInput: 'not-existing-3'.
	self model addHopSearchInput.
	self model hopSearchInput: 'not-existing-4'.
	self model addHopSearchInput.
	[self model searchDirections] valueSupplyingAnswer: { 'No location with name "not-existing-3" found.' . #closeDialog }.
	self assert: worldposMiddle equals: self model tiledMapMorph center