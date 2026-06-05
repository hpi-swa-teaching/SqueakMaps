ui
testSearchLocationIsNotProvided

	| startPos |
	
	startPos := self model tiledMapMorph center.

	self model searchInput: ''.
	[self model searchLocation] valueSupplyingAnswer: { 'Please enter a location.' . #closeDialog }.
	
	self assert: startPos equals: self model tiledMapMorph center
	