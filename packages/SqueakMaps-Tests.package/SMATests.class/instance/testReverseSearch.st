searching
testReverseSearch

	| tiledMapMorph zoomBefore centerBefore coordinatesTrainStation |
	
	self model searchInput: 'Freundschaftsinsel Potsdam'.
	self model searchLocation.
	
	tiledMapMorph := self model tiledMapMorph.
	zoomBefore := tiledMapMorph zoom.
	centerBefore := tiledMapMorph center.
	coordinatesTrainStation := SMAGeoCoordinate newLong: 13.067269007386443 Lat: 52.39153912194062.
	
	self model searchLocationFromCoordinates: coordinatesTrainStation.
	self assert: zoomBefore equals: tiledMapMorph zoom.
	self assert: centerBefore equals: tiledMapMorph center.
	self assert: tiledMapMorph markers size = 1.
	self assert: (tiledMapMorph markers anySatisfy: [:marker | marker label includesSubstring: 'Südliche Innenstadt'])
	
	
	