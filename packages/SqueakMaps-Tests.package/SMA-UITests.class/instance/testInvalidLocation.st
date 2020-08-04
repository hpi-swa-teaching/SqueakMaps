as yet unclassified
testInvalidLocation
	| latLongBerghain |

	latLongBerghain := 13.4430356@52.5111669.
	self subject searchBar setText: 'berghain'.
	searchButton click.
	
	self subject searchBar setText: 'textMorph'.
	[searchButton click] valueSupplyingAnswer: {'No results found.'. #closeDialog}.
	
	self assert: self subject tiledMapMorph center equals: (MapTileLoader latLongToWorldPos: latLongBerghain)
	