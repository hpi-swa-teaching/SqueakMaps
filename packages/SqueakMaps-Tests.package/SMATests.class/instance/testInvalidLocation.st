searching
testInvalidLocation

	self squeakMapsWindow searchInput: 'berghain'.
	self squeakMapsWindow searchLocation.
	
	self squeakMapsWindow searchInput: 'textMorph'.
	[self squeakMapsWindow searchLocation] valueSupplyingAnswer: {'No results found.'. #closeDialog}.

	self assert: self squeakMapsWindow tiledMapMorph center equals: (SMAMapConfigurator latLongToWorldPos: (13.4430356@52.5111669))
	