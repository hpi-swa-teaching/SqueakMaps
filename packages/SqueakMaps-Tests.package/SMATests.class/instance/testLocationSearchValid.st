searching
testLocationSearchValid

	| coords |
	
	coords := SMAGeoCoordinate newFrom: 1 @ 1.
	
	self geocoderMock mockLocateWith: [:query |
		self assert: query equals: 'berlin search'.
		{ self berlinLocation }].
	
	self model searchInput: 'berlin search'.
	self model searchLocation.	
	
	self assert: self model tiledMapMorph center equals: (SMAMapConfigurator geoCoordinatesToWorldPos: coords).
	self assert: self model tiledMapMorph markers size equals: 1.
	self assert: (self model tiledMapMorph markers anySatisfy: [:marker | marker label = 'Berlin'])