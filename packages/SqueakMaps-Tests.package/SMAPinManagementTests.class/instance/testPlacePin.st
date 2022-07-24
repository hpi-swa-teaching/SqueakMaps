pin testing
testPlacePin
	
	| zoomBefore centerBefore location |
	
	zoomBefore := model tiledMapMorph zoom.
	centerBefore := model tiledMapMorph center.
	
	location := SMALocation new
		coordinates: (SMAGeoCoordinate newFrom: 11.576124 @ 48.137154);
		label: 'Munich';
		boundingBox: (11.360777 @ 48.0616244 corner: 11.7229099 @ 48.2481162);
		yourself.

	model setSelectedPin: location.
	model mapConfigurator displayLocation: location.
	
	self assert: model tiledMapMorph markers size = 1.
	self assert: centerBefore equals: model tiledMapMorph center.
	self assert: zoomBefore equals: model tiledMapMorph zoom