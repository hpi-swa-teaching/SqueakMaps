as yet unclassified
testInvalidLocation
	| latLongBerghain |

	latLongBerghain := 13.4430356@52.5111669.
	self searchBar setText: 'berghain'.
	self searchButton click.
	
	self searchBar setText: 'textMorph'.
	[self searchButton click] valueSupplyingAnswer: {'No results found.'. #closeDialog}.
	
	self assert: self tiledMap center equals: (SMAMapTileLoader latLongToWorldPos: latLongBerghain)
	