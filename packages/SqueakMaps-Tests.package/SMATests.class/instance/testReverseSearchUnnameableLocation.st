searching
testReverseSearchUnnameableLocation

	| tiledMapMorph zoomBefore centerBefore coordinatesRioSea |
	
	self model searchInput: 'Rio de Janeiro'.
	self model searchLocation.
	
	tiledMapMorph := self model tiledMapMorph.
	zoomBefore := tiledMapMorph zoom.
	centerBefore := tiledMapMorph center.
	"These are coordinates in international waters along the shore of Rio de Janeiro"
	coordinatesRioSea := SMAGeoCoordinate newLong: -43.28078383281252 Lat: -23.34545570478604.
	
	self model searchLocationFromCoordinates: coordinatesRioSea.
	self assert: zoomBefore equals: tiledMapMorph zoom.
	self assert: centerBefore equals: tiledMapMorph center.
	self assert: tiledMapMorph markers size = 1.
	self assert: (tiledMapMorph markers anySatisfy: [:marker | 
		marker label includesSubstring: coordinatesRioSea toStringLatLong]).
	
	
	