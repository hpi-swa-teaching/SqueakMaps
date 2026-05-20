searching
testDirectionsMultiRouting

	|  resultingRoutes resultingMarkers |
	
	self geocoderMock mockLocateWith: [:query |
		self assert: query equals: 'Berlin'.
		{ self berlinLocation }].
	self geocoderMock mockLocateWith: [:query | 
		self assert: query equals: 'Paris'.
		{ self parisLocation }].
	self geocoderMock mockLocateWith: [:query | 
		self assert: query equals: 'London'.
		{ self londonLocation }].
	self routingAPIMock mockGetRouteFromToByWith: [:from :to :by |
		SMARoute new
			waypoints: { self berlinLocation coordinates . self londonLocation coordinates };
			boundingBox: (1 @ 1 corner: 3 @ 3); "(this will lead to the expected zoom level)"
			yourself].
	
	self model startSearchInput: 'Berlin'.
	self model destinationSearchInput: 'London'.
	self model hopSearchInput: 'Paris'.
	self model addHopSearchInput.
	self model searchDirections.

	resultingRoutes := self model tiledMapMorph routes.
	self assert: resultingRoutes size equals: 2.
	
	resultingMarkers := self model tiledMapMorph markers.
	self assert: (resultingMarkers anySatisfy: [:marker | marker label = 'Berlin']).
	self assert: (resultingMarkers anySatisfy: [:marker | marker label = 'Paris']).
	self assert: (resultingMarkers anySatisfy: [:marker | marker label = 'London']).