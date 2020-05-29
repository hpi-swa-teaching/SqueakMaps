testing
testInvalidLocation


	
	self squeakMapsWindow searchBar contents: 'berghain'.
	self squeakMapsWindow searchButton doButtonAction.
	
	self squeakMapsWindow searchBar contents: 'textMorph'.
	[self squeakMapsWindow searchButton doButtonAction] valueSupplyingAnswer: {'No results found.'. #closeDialog}.

	
	
	self assert: self squeakMapsWindow tiledMapMorph center equals: (MapTileLoader latLongToWorldPos: (13.4430356@52.5111669))
	