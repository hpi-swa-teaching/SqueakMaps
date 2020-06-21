as yet unclassified
testLocationSearching

	| latlongGesundbrunnen pinsGesundbrunnen |
	
	latlongGesundbrunnen := 13.384846@52.5509201.
	
	(self subject findByName: 'enter search location') setText: 'Gesundbrunnen'.
	self subject findByLabel: 'go!' click.
	
	pinsGesundbrunnen :=  self subject tiledMapMorph pins select: [:pin | pin latLong = latlongGesundbrunnen].
	self assert: pinsGesundbrunnen notEmpty.
	self assert: (MapTileLoader latLongToWorldPos: latlongGesundbrunnen)  equals: self subject tiledMapMorph center.
	self assert: self subject tiledMapMorph center equals: (MapTileLoader latLongToWorldPos: latlongGesundbrunnen)