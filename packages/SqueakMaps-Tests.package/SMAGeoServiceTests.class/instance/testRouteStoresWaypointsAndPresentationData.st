testing
testRouteStoresWaypointsAndPresentationData

	| route waypoints bounds |
	waypoints := OrderedCollection with: (SMAGeoCoordinate newLong: 13 lat: 52).
	bounds := 1 @ 2 corner: 3 @ 4.
	route := SMARoute new
		waypoints: waypoints;
		boundingBox: bounds;
		startLabel: 'Start';
		destinationLabel: 'Destination';
		yourself.

	self assert: route waypoints == waypoints.
	self assert: route boundingBox equals: bounds.
	self assert: route startLabel equals: 'Start'.
	self assert: route destinationLabel equals: 'Destination'
