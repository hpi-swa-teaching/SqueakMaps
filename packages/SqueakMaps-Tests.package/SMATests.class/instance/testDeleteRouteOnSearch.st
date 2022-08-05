searching
testDeleteRouteOnSearch

	| tiledMapMorph coords1 coords2 coords3 |

	tiledMapMorph := self model tiledMapMorph.
	
	coords1 := SMAGeoCoordinate newFrom: 1 @ 1.
	coords2 := SMAGeoCoordinate newFrom: 2 @ 2.
	coords3 := SMAGeoCoordinate newFrom: 3 @ 3.
	
	tiledMapMorph route points: {
		SMAMapConfigurator geoCoordinatesToWorldPos: coords1 . 
		SMAMapConfigurator geoCoordinatesToWorldPos: coords2}.
		
	self geocoderMock mockLocateWith: [:query |
		{ SMALocation new
			label: 'A Location';
			coordinates: coords3;
			boundingBox: (1 @ 1 corner: 2 @ 2);
			yourself }].
	
	self model searchInput: 'something'.
	self model searchLocation.
	
	self assert: tiledMapMorph route points isEmpty
