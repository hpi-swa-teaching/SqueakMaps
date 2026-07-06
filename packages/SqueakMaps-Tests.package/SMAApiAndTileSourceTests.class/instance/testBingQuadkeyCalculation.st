testing
testBingQuadkeyCalculation

	| source |
	source := SMABingMapsTileSource new.
	self assert: (source quadkeyForX: 0 y: 0 zoom: 0) equals: ''.
	self assert: (source quadkeyForX: 3 y: 5 zoom: 3) equals: '213'.
	self assert: (source quadkeyForX: 2 y: 3 zoom: 2) equals: '32'
