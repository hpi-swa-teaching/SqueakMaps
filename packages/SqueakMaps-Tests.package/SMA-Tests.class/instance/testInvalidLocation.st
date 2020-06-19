testing
testInvalidLocation


	
	self squeakMapsWindow searchBar setText: 'berghain'.
	self squeakMapsWindow searchButton performAction.
	
	self squeakMapsWindow searchBar setText: 'textMorph'.
	[self squeakMapsWindow searchButton performAction] valueSupplyingAnswer: {'No results found.'. #closeDialog}.

	
	
	self assert: self squeakMapsWindow tiledMapMorph center equals: (MapTileLoader latLongToWorldPos: (13.4430356@52.5111669))
	