testing
testGetRouteSetsEndpointLabels

	| navigator api start destination route |
	navigator := SMANavigator new.
	api := SMARoutingAPIMock new.
	start := SMALocation new
		label: 'Start';
		coordinates: (SMAGeoCoordinate newLong: 13 lat: 52);
		yourself.
	destination := SMALocation new
		label: 'Destination';
		coordinates: (SMAGeoCoordinate newLong: 14 lat: 53);
		yourself.
	route := SMARoute new.
	api mockGetRouteFromToByWith: [:from :to :mode |
		self assert: from == start coordinates.
		self assert: to == destination coordinates.
		self assert: mode equals: #walk.
		route].
	navigator routingAPI: api.

	self assert: (navigator getRouteFrom: start to: destination by: #walk) == route.
	self assert: route startLabel equals: 'Start'.
	self assert: route destinationLabel equals: 'Destination'
