searching
testReverseSearchUnnameableLocation
	
	| tiledMapMorph zoomBefore centerBefore clickedCoords |
	
	tiledMapMorph := self model tiledMapMorph.
	zoomBefore := tiledMapMorph zoom.
	centerBefore := tiledMapMorph center.
	
	clickedCoords := SMAGeoCoordinate newLong: 7 Lat: 8.
	
	self geocoderMock mockReverseWithZoomWith: [:coords :zoom |
		(SMALocationUnnameableError new) signal].
	
	self model searchLocationFromCoordinates: clickedCoords.
	
	self assert: zoomBefore equals: tiledMapMorph zoom.
	self assert: centerBefore equals: tiledMapMorph center.
	self assert: tiledMapMorph markers size = 1.
	self assert: (tiledMapMorph markers anySatisfy: [:marker | marker label = '8 °N, 7 °E'])
	
	
	