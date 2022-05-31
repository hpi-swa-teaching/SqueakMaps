as yet unclassified
testSingleLocationSearching
	"nochmal angucken, welches Verhalten erwartet wird"
	| latlongGesundbrunnen pinsGesundbrunnen |
	
	latlongGesundbrunnen := 13.384846@52.5509201.
	
	model startSearchInput: 'Gesundbrunnen'.
	model destinationSearchInput: ''.
	self searchButton click.
	
	pinsGesundbrunnen :=  self tiledMap pins select: [:pin | pin latLong = latlongGesundbrunnen].
	self assert: pinsGesundbrunnen notEmpty.
	self assert: (SMAMapTileLoader latLongToWorldPos: latlongGesundbrunnen) equals: self tiledMap center