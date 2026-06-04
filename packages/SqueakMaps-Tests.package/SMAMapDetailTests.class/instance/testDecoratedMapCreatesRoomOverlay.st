as yet unclassified
testDecoratedMapCreatesRoomOverlay

	| decoratedMap overlay |
	decoratedMap := SMADecoratedMapMorph fromOSMFile: self singleRoomOSMFile.

	self assert: decoratedMap overlays size equals: 1.

	overlay := decoratedMap overlays first.
	self assert: overlay class equals: SMAGeoPolygonMorph.
	self assert: overlay label equals: 'K-E.18'.
	self assert: overlay geoPoints size equals: 6.