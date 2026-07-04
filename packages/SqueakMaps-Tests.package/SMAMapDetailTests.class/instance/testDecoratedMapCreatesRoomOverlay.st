as yet unclassified
testDecoratedMapCreatesRoomOverlay

	| decoratedMap overlay |
	decoratedMap := SMAOSMMapBuilder fromOSMFile: self singleRoomOSMFile.

	self assert: decoratedMap roomOverlays isEmpty not.

	overlay := decoratedMap roomOverlays first.
	self assert: overlay class equals: SMAGeoPolygonMorph.
	self assert: overlay model class equals: SMARoom.
	self assert: overlay geoPoints isEmpty not.
	self assert: overlay label equals: overlay model ref