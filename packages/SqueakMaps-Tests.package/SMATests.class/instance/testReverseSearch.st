searching
testReverseSearch

	| tiledMapMorph zoomBefore centerBefore clickedCoords |
	
	tiledMapMorph := self model tiledMapMorph.
	zoomBefore := tiledMapMorph zoom.
	centerBefore := tiledMapMorph center.
	
	clickedCoords := SMAGeoCoordinate newLong: 5 Lat: 5.
	
	self geocoderMock mockReverseWithZoomWith: [:coords :zoom |
		self assert: coords equals: clickedCoords.
		self assert: zoom equals: zoomBefore.
		self berlinLocation].
	
	self model searchLocationFromCoordinates: clickedCoords.
	
	self assert: zoomBefore equals: tiledMapMorph zoom.
	self assert: centerBefore equals: tiledMapMorph center.
	self assert: tiledMapMorph markers size = 1.
	self assert: (tiledMapMorph markers anySatisfy: [:marker | marker label = 'Berlin'])
	
	
	