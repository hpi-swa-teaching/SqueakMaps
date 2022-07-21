testing
testDirectionLocationsAreNotProvided

	| worldposMiddle |
	
	worldposMiddle := 0.5 @ 0.5. "worldPos without any zoom"

	"Destination not set"
	model startSearchInput: 'Berlin'.
	model destinationSearchInput: ''.
	[model searchDirections] valueSupplyingAnswer: {'Please enter a start and destination location.' . #closeDialog}.
	self assert: worldposMiddle equals: model tiledMapMorph center.
	
	"Start not set"
	model startSearchInput: ''.
	model destinationSearchInput: 'Berlin'.
	[model searchDirections] valueSupplyingAnswer: {'Please enter a start and destination location.' . #closeDialog}.
	self assert: worldposMiddle equals: model tiledMapMorph center.
	
	"Both not set"
	model startSearchInput: ''.
	model destinationSearchInput: ''.
	[model searchDirections] valueSupplyingAnswer: {'Please enter a start and destination location.' . #closeDialog}.
	self assert: worldposMiddle equals: model tiledMapMorph center
	