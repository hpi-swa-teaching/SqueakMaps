testing
testDirectionLocationsDoNotExist
	"skip until bug that occurs when running this test is fixed"
	| worldposMiddle |
	worldposMiddle := 0.5@0.5.

	"Destination does not exist"
	model startSearchInput: 'Berlin'.
	model destinationSearchInput: 'this-place-does-not-exist'.
	[model searchDirections] valueSupplyingAnswer: {'No results found.' . #closeDialog}.
	self assert: worldposMiddle equals: model tiledMapMorph center.
	
	"Start does not exist"
	model startSearchInput: 'this-place-does-not-exist'.
	model destinationSearchInput: 'Berlin'.
	[model searchDirections] valueSupplyingAnswer: {'No results found.' . #closeDialog}.
	self assert: worldposMiddle equals: model tiledMapMorph center.
	
	"Both do not exist"
	model startSearchInput: 'this-place-does-not-exist'.
	model destinationSearchInput: 'this-place-does-not-exist'.
	[model searchDirections] valueSupplyingAnswer: {'No results found.' . #closeDialog}.
	self assert: worldposMiddle equals: model tiledMapMorph center