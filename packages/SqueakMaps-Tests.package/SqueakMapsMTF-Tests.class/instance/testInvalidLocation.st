as yet unclassified
testInvalidLocation


	
	self subject searchBar contents: 'berghain'.
	searchButton click.
	
	self subject searchBar contents: 'textMorph'.
	[searchButton click] valueSupplyingAnswer: {'No results found.'. #closeDialog}.
	
	self assert: self subject tiledMapMorph center equals: (MapTileLoader latLongToWorldPos: (13.4430356@52.5111669))
	