pin testing
testPlacePin
	
	| zoomBefore centerBefore mapLocations location |
	
	zoomBefore := model tiledMapMorph zoom.
	centerBefore := model tiledMapMorph center.
	
	location := SMALocation new
		latLong: 11.576124@48.137154;
		label: 'Munich';
		boundingBox: (11.360777@48.0616244 corner: 11.7229099@48.2481162);
		yourself.

	model setSelectedPin: location.
	model mapConfigurator displayLocation: location.
	
	mapLocations :=  model tiledMapMorph markers select: [:marker | marker latLong = location latLong].
	self assert: mapLocations notEmpty.
	self assert: centerBefore equals: model tiledMapMorph center.
	self assert: zoomBefore equals: model tiledMapMorph zoom