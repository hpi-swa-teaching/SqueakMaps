as yet unclassified
testApiButtonThunderforest
	
	[apiButton click] valueSupplyingAnswer: {'choose mapmode' . 'Cycling [Thunderforest]'}.
	self assert: self subject tiledMapMorph tileSource class equals: ThunderforestTileSource