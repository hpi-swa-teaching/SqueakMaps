ui
testDirectionLocationsAreNotProvided

	| worldposMiddle |
	
	worldposMiddle := 0.5 @ 0.5. "worldPos without any zoom"

	"Destination not set"
	self model startSearchInput: 'Berlin'.
	self model destinationSearchInput: ''.
	[self model searchDirections] valueSupplyingAnswer: {'Please enter a start and destination location.' . #closeDialog}.
	self assert: worldposMiddle equals: self model tiledMapMorph center.
	
	"Start not set"
	self model startSearchInput: ''.
	self model destinationSearchInput: 'Berlin'.
	[self model searchDirections] valueSupplyingAnswer: {'Please enter a start and destination location.' . #closeDialog}.
	self assert: worldposMiddle equals: self model tiledMapMorph center.
	
	"Both not set"
	self model startSearchInput: ''.
	self model destinationSearchInput: ''.
	[self model searchDirections] valueSupplyingAnswer: {'Please enter a start and destination location.' . #closeDialog}.
	self assert: worldposMiddle equals: self model tiledMapMorph center
	