as yet unclassified
testTwoLocationSearching

	| latlongGesundbrunnen latlongLondon pinsGesundbrunnen pinsLondon worldPosMiddle|
	
	latlongGesundbrunnen := 13.384846@52.5509201.
	latlongLondon := -0.1276474@51.5073219.
	worldPosMiddle := 0.5184127758333333@0.3301699148348541.
	
	(self subject findByName: 'Search Bar') setText: 'Gesundbrunnen'.
	(self subject findByName: 'Second Search Bar') setText: 'London'.
	
	(self subject findByLabel: 'go!') click.
	
	pinsGesundbrunnen :=  self subject tiledMapMorph pins select: [:pin | pin latLong = latlongGesundbrunnen].
	pinsLondon :=  self subject tiledMapMorph pins select: [:pin | pin latLong = latlongLondon].
	
	self assert: pinsGesundbrunnen notEmpty.
	self assert: pinsLondon notEmpty.
	self assert: worldPosMiddle equals: self subject tiledMapMorph center