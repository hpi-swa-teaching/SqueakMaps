ui
testSearchLocationIsNotProvided

	| worldposMiddle |
	
	worldposMiddle := 0.5 @ 0.5. "worldPos without any zoom"

	self model searchInput: ''.
	[self model searchLocation] valueSupplyingAnswer: {'Please enter a location.' . #closeDialog}.
	
	self assert: worldposMiddle equals: self model tiledMapMorph center
	