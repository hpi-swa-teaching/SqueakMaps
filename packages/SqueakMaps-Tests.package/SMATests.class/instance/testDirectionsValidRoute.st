searching
testDirectionsValidRoute

	|  expectedMiddle expectedZoom resultingRouteLine resultingMarkers |

	expectedMiddle := SMAGeoCoordinate newFrom: 1.5 @ 1.5.
	expectedZoom := 6.
	
	self geocoderMock mockLocateWith: [:query |
		self assert: query equals: 'Berlin'.
		{ self berlinLocation }].
	self geocoderMock mockLocateWith: [:query | 
		self assert: query equals: 'London'.
		{ self londonLocation }].
	self routingAPIMock mockGetRouteFromToByWith: [:from :to :by |
		self assert: from equals: self berlinLocation coordinates.
		self assert: to equals: self londonLocation coordinates.
		self assert: by equals: #car.
		SMARoute new
			waypoints: { self berlinLocation coordinates . self londonLocation coordinates };
			boundingBox: (1 @ 1 corner: 3 @ 3); "(this will lead to the expected zoom level)"
			yourself].
	
	self model startSearchInput: 'Berlin'.
	self model destinationSearchInput: 'London'.
	self model searchDirections.

	self assert: (SMAMapConfigurator geoCoordinatesToWorldPos: expectedMiddle) equals: self model tiledMapMorph center.
	self assert: expectedZoom equals: self model tiledMapMorph zoom.

	resultingRouteLine := self model tiledMapMorph route.
	self assert: resultingRouteLine points size equals: 2.
	self assert: resultingRouteLine boundingBox equals: (1 @ 1 corner: 3 @ 3).
	
	resultingMarkers := self model tiledMapMorph markers asList.
	self assert: (resultingMarkers anySatisfy: [:marker | marker label = 'Berlin']).
	self assert: (resultingMarkers anySatisfy: [:marker | marker label = 'London']).