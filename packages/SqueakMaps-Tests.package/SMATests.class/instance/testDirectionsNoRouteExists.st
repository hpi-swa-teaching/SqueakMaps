searching
testDirectionsNoRouteExists

	| tiledMapMorph |
	
	tiledMapMorph := self model tiledMapMorph.
	
	self geocoderMock mockLocateWith: [:query | { self berlinLocation }].
	self geocoderMock mockLocateWith: [:query | { self londonLocation }].
	self routingAPIMock mockGetRouteFromToByWith: [:from :to :by | (SMAUnreachableDestinationError new) signal].

	self model hopSearchInput: 'Berlin'.
	self model addHopSearchInput.
	self model hopSearchInput: 'London'.
	self model addHopSearchInput.
	[self model searchDirections] valueSupplyingAnswer: { 'There exists no route between the given locations.' . #closeDialog }.

	self assert: tiledMapMorph markers size equals: 2.
	self assert: (tiledMapMorph markers anySatisfy: [:marker | marker label = 'Berlin']).
	self assert: (tiledMapMorph markers anySatisfy: [:marker | marker label = 'London'])