searching
testDirectionsNoRouteExists

	| tiledMapMorph |
	
	tiledMapMorph := self model tiledMapMorph.
	
	self geocoderMock mockLocateWith: [:query | { self berlinLocation }].
	self geocoderMock mockLocateWith: [:query | { self londonLocation }].
	self routingAPIMock mockGetRouteFromToByWith: [:from :to :by | (SMAUnreachableDestinationError new) signal].

	self model startSearchInput: 'Berlin'.
	self model destinationSearchInput: 'London'.
	[self model searchDirections] valueSupplyingAnswer: {'There exists no route between the given locations.'. #closeDialog}.

	self assert: tiledMapMorph markers size equals: 2.
	self assert: (tiledMapMorph markers anySatisfy: [:marker | marker label = 'Berlin']).
	self assert: (tiledMapMorph markers anySatisfy: [:marker | marker label = 'London'])