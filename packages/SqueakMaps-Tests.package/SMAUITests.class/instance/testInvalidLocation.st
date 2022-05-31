as yet unclassified
testInvalidLocation
"nochmal angucken, welches Verhalten erwartet wird"
	| latLongBerghain worldposMiddle |

	latLongBerghain := 13.4430356@52.5111669.
	worldposMiddle := (0.5@0.5). "worldPos without any zoom"
	model startSearchInput: 'berghain'.
	self searchButton click.
	
	model destinationSearchInput: 'textMorph'.
	[self searchButton click] valueSupplyingAnswer: {'No results found.'. #closeDialog}.
	
	"self assert: self tiledMap center equals: (SMAMapTileLoader latLongToWorldPos: latLongBerghain)"
	self assert: worldposMiddle equals: self tiledMap center
	