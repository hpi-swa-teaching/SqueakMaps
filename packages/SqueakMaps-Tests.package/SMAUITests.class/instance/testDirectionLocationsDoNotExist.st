testing
testDirectionLocationsDoNotExist
	
	| worldposMiddle nonExistingPlace |
	
	nonExistingPlace := 'this-place-does-not-exist'.
	worldposMiddle := 0.5 @ 0.5.

	"Destination does not exist"
	model startSearchInput: 'Berlin'.
	model destinationSearchInput: nonExistingPlace.
	[model searchDirections] valueSupplyingAnswer: {'No location with name "' , nonExistingPlace , '" found.' . #closeDialog}.
	self assert: worldposMiddle equals: model tiledMapMorph center.
	
	"Start does not exist"
	model startSearchInput: nonExistingPlace.
	model destinationSearchInput: 'Berlin'.
	[model searchDirections] valueSupplyingAnswer: {'No location with name "' , nonExistingPlace , '" found.' . #closeDialog}.
	self assert: worldposMiddle equals: model tiledMapMorph center.
	
	"Both do not exist"
	model startSearchInput: nonExistingPlace.
	model destinationSearchInput: nonExistingPlace.
	[model searchDirections] valueSupplyingAnswer: {'No location with name "' , nonExistingPlace , '" found.' . #closeDialog}.
	self assert: worldposMiddle equals: model tiledMapMorph center