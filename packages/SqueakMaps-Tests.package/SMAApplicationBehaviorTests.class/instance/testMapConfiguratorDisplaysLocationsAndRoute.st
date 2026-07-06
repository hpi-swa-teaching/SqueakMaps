testing - map configurator
testMapConfiguratorDisplaysLocationsAndRoute

	| configurator location1 location2 bounds route coordinates |
	configurator := application mapConfigurator.
	location1 := SMALocation new
		label: 'A';
		coordinates: (SMAGeoCoordinate newLong: 13.10 lat: 52.40);
		boundingBox: (13.09 @ 52.39 corner: 13.11 @ 52.41);
		yourself.
	location2 := SMALocation new
		label: 'B';
		coordinates: (SMAGeoCoordinate newLong: 13.20 lat: 52.50);
		boundingBox: (13.19 @ 52.49 corner: 13.21 @ 52.51);
		yourself.
	bounds := configurator calculateBoundingBoxFrom: {location1. location2}.
	self assert: bounds origin equals: 13.09 @ 52.39.
	self assert: bounds corner equals: 13.21 @ 52.51.
	configurator showLocations: {location1. location2}.
	self assert: application tiledMapMorph markers size equals: 2.

	coordinates := OrderedCollection with: location1 coordinates with: location2 coordinates.
	route := SMARoute new
		waypoints: coordinates;
		boundingBox: bounds;
		startLabel: 'A';
		destinationLabel: 'B';
		yourself.
	configurator displayRoute: route.
	self assert: application tiledMapMorph route points size equals: 2.
	self assert: application tiledMapMorph markers size equals: 2
