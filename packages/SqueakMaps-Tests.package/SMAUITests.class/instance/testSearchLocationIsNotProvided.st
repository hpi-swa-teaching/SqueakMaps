testing
testSearchLocationIsNotProvided

	| worldposMiddle |
	
	worldposMiddle := 0.5 @ 0.5. "worldPos without any zoom"

	model searchInput: ''.
	[model searchLocation] valueSupplyingAnswer: {'Please enter a location.' . #closeDialog}.
	
	self assert: worldposMiddle equals: model tiledMapMorph center
	