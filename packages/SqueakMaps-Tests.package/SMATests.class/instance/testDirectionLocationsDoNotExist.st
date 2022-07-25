ui
testDirectionLocationsDoNotExist
	
	| worldposMiddle nonExistingPlace |
	
	nonExistingPlace := 'this-place-does-not-exist'.
	worldposMiddle := 0.5 @ 0.5.

	"Destination does not exist"
	self model startSearchInput: 'Berlin'.
	self model destinationSearchInput: nonExistingPlace.
	[self model searchDirections] valueSupplyingAnswer: {'No location with name "' , nonExistingPlace , '" found.' . #closeDialog}.
	self assert: worldposMiddle equals: self model tiledMapMorph center.
	
	"Start does not exist"
	self model startSearchInput: nonExistingPlace.
	self model destinationSearchInput: 'Berlin'.
	[self model searchDirections] valueSupplyingAnswer: {'No location with name "' , nonExistingPlace , '" found.' . #closeDialog}.
	self assert: worldposMiddle equals: self model tiledMapMorph center.
	
	"Both do not exist"
	self model startSearchInput: nonExistingPlace.
	self model destinationSearchInput: nonExistingPlace.
	[self model searchDirections] valueSupplyingAnswer: {'No location with name "' , nonExistingPlace , '" found.' . #closeDialog}.
	self assert: worldposMiddle equals: self model tiledMapMorph center