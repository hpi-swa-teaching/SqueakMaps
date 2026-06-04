ui
testDirectionLocationsAreNotProvided

	| worldposMiddle |
	
	worldposMiddle := 0.5 @ 0.5. "worldPos without any zoom"

	"Hop not set"
	self model hopSearchInput: ''.
	[self model addHopSearchInput] valueSupplyingAnswer: { 'Please enter a hop.' . #closeDialog }.
	self assert: worldposMiddle equals: self model tiledMapMorph center.
	