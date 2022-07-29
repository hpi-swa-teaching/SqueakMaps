searching
testDirectionsLocationsTooFarApart

	| tiledMapMorph |
	
	tiledMapMorph := self model tiledMapMorph.
	
	self geocoderMock mockLocateWith: [:query | { self berlinLocation }].
	self geocoderMock mockLocateWith: [:query | { self londonLocation }].
	self routingAPIMock mockGetRouteFromToByWith: [:from :to :by | (SMARouteTooLongError new) signal].

	self model startSearchInput: 'Berlin'.
	self model destinationSearchInput: 'London'.
	[self model searchDirections] valueSupplyingAnswer: {'The chosen locations are too far apart from each other.'. #closeDialog}.

	self assert: tiledMapMorph markers size equals: 2.
	self assert: (tiledMapMorph markers anySatisfy: [:marker | marker label = 'Berlin']).
	self assert: (tiledMapMorph markers anySatisfy: [:marker | marker label = 'London'])