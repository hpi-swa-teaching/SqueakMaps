searching
testInvalidLocation

	| invalidLocationName centerCoordinates |
	
	invalidLocationName := 'textMorph'.
	centerCoordinates := SMAGeoCoordinate newFrom: 13.4430356@52.5111669.
	
	self squeakMapsWindow searchInput: 'berghain'.
	self squeakMapsWindow searchLocation.
	self squeakMapsWindow searchInput: invalidLocationName.
	[self squeakMapsWindow searchLocation] valueSupplyingAnswer: {'No location with name "' , invalidLocationName , '" found.'. #closeDialog}.
	
	self assert: self squeakMapsWindow tiledMapMorph center equals: (SMAMapConfigurator geoCoordinatesToWorldPos: centerCoordinates)
	