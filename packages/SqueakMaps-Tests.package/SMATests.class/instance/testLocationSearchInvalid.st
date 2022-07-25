searching
testLocationSearchInvalid

	| invalidLocationName centerCoordinates |
	
	invalidLocationName := 'textMorph'.
	centerCoordinates := SMAGeoCoordinate newFrom: 13.4430356 @ 52.5111669.
	
	self model searchInput: 'berghain'.
	self model searchLocation.
	self model searchInput: invalidLocationName.
	[self model searchLocation] valueSupplyingAnswer: {'No location with name "' , invalidLocationName , '" found.'. #closeDialog}.
	
	self assert: self model tiledMapMorph center equals: (SMAMapConfigurator geoCoordinatesToWorldPos: centerCoordinates)
	