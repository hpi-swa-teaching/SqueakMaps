as yet unclassified
testLocationSearching

	| longLatGesundbrunnen pinsGesundbrunnen |
	
	longLatGesundbrunnen := 13.384846@52.5509201.
	
	(self subject findByName: 'Search Bar') setText: 'Gesundbrunnen'.
	(self subject findByLabel: 'go!') click.
	pinsGesundbrunnen :=  self subject tiledMapMorph pins select: [:pin | pin longLat = longLatGesundbrunnen].
	
	self assert: pinsGesundbrunnen notEmpty.
	self assert: (SMAMapTileLoader longLatToWorldPos: longLatGesundbrunnen) equals: self subject tiledMapMorph center