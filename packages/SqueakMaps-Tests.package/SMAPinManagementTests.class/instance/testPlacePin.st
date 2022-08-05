pin testing
testPlacePin
	
	| zoomBefore centerBefore location |
	
	zoomBefore := self model tiledMapMorph zoom.
	centerBefore := self model tiledMapMorph center.
	
	location := SMALocation new
		coordinates: (SMAGeoCoordinate newFrom: 11.576124 @ 48.137154);
		label: 'Munich';
		boundingBox: (11.360777 @ 48.0616244 corner: 11.7229099 @ 48.2481162);
		yourself.

	self model setSelectedPin: location.
	self model mapConfigurator displayLocation: location.
	
	self assert: self model tiledMapMorph markers size = 1.
	self assert: centerBefore equals: self model tiledMapMorph center.
	self assert: zoomBefore equals: self model tiledMapMorph zoom