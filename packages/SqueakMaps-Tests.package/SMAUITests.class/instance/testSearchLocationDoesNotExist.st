testing
testSearchLocationDoesNotExist

	| worldposMiddle |
	worldposMiddle := 0.5@0.5. "worldPos without any zoom"

	model searchInput: 'this-place-does-not-exist'.
	[model searchLocation] valueSupplyingAnswer: {'No results found.' . #closeDialog}.
	
	self assert: worldposMiddle equals: model tiledMapMorph center
	