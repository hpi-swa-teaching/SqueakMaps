ui
testDirectionLocationsAreNotProvided

	| worldposMiddle |
	
	worldposMiddle := 0.5 @ 0.5. "worldPos without any zoom"

	"Destination not set"
	self model startSearchInput: 'Berlin'.
	self model destinationSearchInput: ''.
	[self model searchDirectionsFrom: self model startSearchInput to: self model destinationSearchInput] valueSupplyingAnswer: { 'Please enter a start and destination location.' . #closeDialog }.
	self assert: worldposMiddle equals: self model tiledMapMorph center.
	
	"Start not set"
	self model startSearchInput: ''.
	self model destinationSearchInput: 'Berlin'.
	[self model searchDirectionsFrom: self model startSearchInput to: self model destinationSearchInput] valueSupplyingAnswer: { 'Please enter a start and destination location.' . #closeDialog }.
	self assert: worldposMiddle equals: self model tiledMapMorph center.
	
	"Both not set"
	self model startSearchInput: ''.
	self model destinationSearchInput: ''.
	[self model searchDirectionsFrom: self model startSearchInput to: self model destinationSearchInput] valueSupplyingAnswer: { 'Please enter a start and destination location.' . #closeDialog }.
	self assert: worldposMiddle equals: self model tiledMapMorph center
	