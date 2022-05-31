as yet unclassified
testDirectionLocationsDoNotExist

	| worldposMiddle |
	worldposMiddle := 0.5@0.5. "worldPos without any zoom"

	"Destination does not exist"
	model startSearchInput: 'Berlin'.
	model destinationSearchInput: 'this-place-does-not-exist'.
	[model searchMultipleLocations] valueSupplyingAnswer: {'No results found.' . #closeDialog}.
	self assert: worldposMiddle equals: model tiledMapMorph center.
	
	"Start does not exist"
	model startSearchInput: 'this-place-does-not-exist'.
	model destinationSearchInput: 'Berlin'.
	[model searchMultipleLocations] valueSupplyingAnswer: {'No results found.' . #closeDialog}.
	self assert: worldposMiddle equals: model tiledMapMorph center.
	
	"Both do not exist"
	model startSearchInput: 'this-place-does-not-exist'.
	model destinationSearchInput: 'this-place-does-not-exist'.
	[model searchMultipleLocations] valueSupplyingAnswer: {'No results found.' . #closeDialog}.
	self assert: worldposMiddle equals: model tiledMapMorph center
	