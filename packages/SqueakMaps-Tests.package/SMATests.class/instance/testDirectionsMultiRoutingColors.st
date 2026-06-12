searching
testDirectionsMultiRoutingColors

	|  resultingRoutes |
	
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
	| currentWaypoints |
	currentWaypoints := (from = self berlinLocation coordinates)
		ifTrue: [ { self berlinLocation coordinates . self parisLocation coordinates } ]
		ifFalse: [ { self parisLocation coordinates . self londonLocation coordinates } ].

	SMARoute new
		waypoints: currentWaypoints;
		boundingBox: (1 @ 1 corner: 3 @ 3);
		yourself].
	
	self model hopSearchInput: 'Berlin'.
	self model addHopSearchInput.
	self model hopSearchInput: 'Paris'.
	self model addHopSearchInput.
	self model hopSearchInput: 'London'.
	self model addHopSearchInput.
	self model searchDirections.

	resultingRoutes := self model tiledMapMorph routes.
	SMARouteLine routeColorCollection size > 1 ifTrue: [
		self assert: resultingRoutes first color ~= resultingRoutes second color.
	]; ifFalse: [
		self assert: resultingRoutes first color = resultingRoutes second color.
	].
	