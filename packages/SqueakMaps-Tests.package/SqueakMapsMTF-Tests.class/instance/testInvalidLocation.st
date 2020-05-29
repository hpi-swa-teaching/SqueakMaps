as yet unclassified
testInvalidLocation
	| previousPosition |

	
	self subject searchBar contents: 'Gesundbrunnen'.
	searchButton click.
	
	previousPosition := subject tiledMapMorph center.
	
	self subject searchBar contents: 'textMorph'.
	searchButton click.
	
	self assert: self subject tiledMapMorph center equals: previousPosition.