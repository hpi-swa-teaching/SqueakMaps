as yet unclassified
testSingleLocationSearching

	| latlongGesundbrunnen pinsGesundbrunnen |
	
	latlongGesundbrunnen := 13.384846@52.5509201.
	
	(self subject findByName: 'Search Bar') setText: 'Gesundbrunnen'.
	(self subject findByName: 'Second Search Bar') setText: ''.
	(self subject findByLabel: 'go!') click.
	
	pinsGesundbrunnen :=  self subject tiledMapMorph pins select: [:pin | pin latLong = latlongGesundbrunnen].
	self assert: pinsGesundbrunnen notEmpty.
	self assert: (SMAMapTileLoader latLongToWorldPos: latlongGesundbrunnen) equals: self subject tiledMapMorph center