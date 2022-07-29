ui
testSearchLocationDoesNotExist

	| worldposMiddle locationName |
	
	worldposMiddle := 0.5 @ 0.5. "worldPos without any zoom"
	locationName := 'this-place-does-not-exist'.
	
	self model searchInput: locationName.
	[self model searchLocation] valueSupplyingAnswer: {'No location with name "' , locationName , '" found.' . #closeDialog}.
	
	self assert: worldposMiddle equals: self model tiledMapMorph center
	