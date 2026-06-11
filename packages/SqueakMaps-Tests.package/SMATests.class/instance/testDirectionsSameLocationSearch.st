searching
testDirectionsSameLocationSearch

	| tiledMapMorph |
	
	tiledMapMorph := self model tiledMapMorph.
	
	self geocoderMock mockLocateWith: [:query | { self berlinLocation }].
	self geocoderMock mockLocateWith: [:query | { self berlinLocation }].

	self model startSearchInput: 'Berlin'.
	self model destinationSearchInput: 'Berlin'.
	[self model searchDirections] valueSupplyingAnswer: { 'Start and Destination Location are the same.' . #closeDialog }.

	self assert: tiledMapMorph markers size = 1.
	self assert: (tiledMapMorph markers anySatisfy: [:marker | marker label = 'Berlin'])
